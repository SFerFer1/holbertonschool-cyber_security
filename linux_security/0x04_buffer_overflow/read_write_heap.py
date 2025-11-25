#!/usr/bin/env python3
import sys

# Programa principal
def main():
    # Verifica que se pasen 3 argumentos: pid, texto a buscar, texto a reemplazar.
    if len(sys.argv) != 4:
        print("se nececita 3 argumentos: pid, texto_a_buscar, texto_a_reemplazar")
        sys.exit(1)

    pid = sys.argv[1]
    search = sys.argv[2].encode("ascii")    # Texto a buscar convertido en bytes
    replace = sys.argv[3].encode("ascii")   # Texto de reemplazo convertido en bytes

    # Ambos textos deben tener la misma longitud para escribir sin romper memoria
    if len(search) != len(replace):
        print("Error: los textos deben tener la misma longitud.")
        sys.exit(1)

    heap_start = None
    heap_end = None

    # Abrimos /proc/<pid>/maps para encontrar la región de memoria [heap]
    with open(f"/proc/{pid}/maps", "r") as maps:
        for line in maps:
            # La línea que contiene "[heap]" indica la región del heap
            if "[heap]" in line:
                addr = line.split()[0]      # Primer campo: rango de direcciones
                tmp = addr.split("-")       # Separar inicio y fin del heap
                start_str = tmp[0]
                end_str = tmp[1]
                heap_start = int(start_str, 16)   # Convertir hex a int
                heap_end = int(end_str, 16)
                break

    # Abrimos /proc/<pid>/mem para leer y escribir la memoria del proceso
    with open(f"/proc/{pid}/mem", "rb+") as mem:
        mem.seek(heap_start)                        # Nos movemos al inicio del heap
        heap_data = mem.read(heap_end - heap_start) # Leemos el heap completo
        index = heap_data.find(search)              # Buscamos el texto dentro del heap

        # Si no se encuentra el texto, salimos
        if index == -1:
            print("No se encontró el texto en el heap.")
            sys.exit(1)

        # Si lo encontramos, escribimos el reemplazo en la dirección exacta
        mem.seek(heap_start + index)
        mem.write(replace)

        print("Texto reemplazado en el heap.")

if __name__ == "__main__":
    main()
