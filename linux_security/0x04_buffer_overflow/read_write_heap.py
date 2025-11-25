#!/usr/bin/env python3
"""
Script que permite leer y modificar la memoria heap de un proceso
buscando una cadena y reemplazándola por otra del mismo tamaño.
"""

import sys

def main():
    """
    Función principal del script.
    Lee el PID, el texto a buscar y el texto de reemplazo desde la línea
    de comandos, localiza la región heap en /proc/<pid>/maps, busca la
    cadena en /proc/<pid>/mem y la reemplaza si existe.
    """
    
    if len(sys.argv) != 4:
        print("se nececita 3 argumentos: pid, texto_a_buscar, texto_a_reemplazar")
        sys.exit(1)

    pid = sys.argv[1]
    search = sys.argv[2].encode("ascii")
    replace = sys.argv[3].encode("ascii")

    heap_start = None
    heap_end = None

    with open(f"/proc/{pid}/maps", "r") as maps:
        for line in maps:
            if "[heap]" in line:
                addr = line.split()[0]
                tmp = addr.split("-")
                heap_start = int(tmp[0], 16)
                heap_end = int(tmp[1], 16)
                break

    with open(f"/proc/{pid}/mem", "rb+") as mem:
        mem.seek(heap_start)
        heap_data = mem.read(heap_end - heap_start)
        index = heap_data.find(search)

        if index == -1:
            print("No se encontró el texto en el heap.")
            sys.exit(1)

        mem.seek(heap_start + index)
        mem.write(replace)

        print("Texto reemplazado en el heap.")

if __name__ == "__main__":
    main()
