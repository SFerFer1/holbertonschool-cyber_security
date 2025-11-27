#!/usr/bin/python3
"""
Heap edit
"""

import sys

def main():
    """
    Main func
    """

    # Args check
    if len(sys.argv) != 4:
        print("Usage: pid text1 text2")
        sys.exit(1)

    pid = sys.argv[1]
    search = sys.argv[2].encode("ascii")
    replace = sys.argv[3].encode("ascii")

    heap_start = None
    heap_end = None

    # Read maps
    try:
        with open(f"/proc/{pid}/maps", "r") as maps:
            for line in maps:
                if "[heap]" in line:
                    addr = line.split()[0]
                    a, b = addr.split("-")
                    heap_start = int(a, 16)
                    heap_end = int(b, 16)
                    break
    except (FileNotFoundError, PermissionError):
        print("Usage: pid text1 text2")
        sys.exit(1)

    # No heap
    if heap_start is None:
        print("Usage: pid text1 text2")
        sys.exit(1)

    # Read/write mem
    try:
        with open(f"/proc/{pid}/mem", "rb+") as mem:
            mem.seek(heap_start)
            data = mem.read(heap_end - heap_start)
            idx = data.find(search)

            if idx == -1:
                print("Text not found")
                sys.exit(1)

            mem.seek(heap_start + idx)
            mem.write(replace)
            print("OK")
    except (PermissionError, OSError, IOError):
        print("Usage: pid text1 text2")
        sys.exit(1)


if __name__ == "__main__":
    main()
