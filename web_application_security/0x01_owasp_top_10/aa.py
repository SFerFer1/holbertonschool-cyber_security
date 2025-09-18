import base64

def xor_decode(encoded_str, key):
    decoded_bytes = base64.b64decode(encoded_str)
    plain_bytes = bytes([b ^ key for b in decoded_bytes])
    return plain_bytes.decode('utf-8', errors='ignore')

xor_encoded = "Dz58GD1oJgcVD2ZrFT4tGwo tACk7Oh4UKA=="
key = 0x5F

contraseña = xor_decode(xor_encoded, key)
print("Contraseña descifrada:", contraseña)
