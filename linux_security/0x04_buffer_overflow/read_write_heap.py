#!/usr/bin/env python3
import sys

def main():
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
                start_str = tmp[0]
                end_str = tmp[1]
                heap_start = int(start_str, 16)
                heap_end = int(end_str, 16)
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
