def Permutation(text: str, key):
    length_key = len(key)
    text = text.upper().strip()
    groups = [text[i:i+length_key] for i in range(0, len(text), length_key)]
    text_cyphered = ''
    for group in groups:
        if len(group) < length_key:
            group += 'X' * (length_key - len(group))
        for i in range(length_key):
            index = key.index(str(i+1))
            text_cyphered += group[int(index)-1]
    text_cyphered
    return text_cyphered

text = input('Type a text with 100 characters or less')
key = input('Type a key with 100 characters or less')

text_cyphered = Permutation(text, key)
print(text_cyphered)


    