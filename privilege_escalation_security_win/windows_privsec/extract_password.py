import base64
import sys

def decode_windows_password(encoded_str):
    try:
        decoded_bytes = base64.b64decode(encoded_str.strip())
        try:
            return decoded_bytes.decode('utf-16')
        except:
            return decoded_bytes.decode('utf-8')
    except Exception as e:
        return str(e)

if __name__ == "__main__":
    dato = sys.argv[1] if len(sys.argv) > 1 else input()
    print(decode_windows_password(dato))