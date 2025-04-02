
alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
def CesarCypher(text, key, mode):
    text = text.upper()
    text_cyphered = ''
    for letter in text:
        if letter in alphabet:
            index = alphabet.index(letter)
            if mode == 'cypher':
                index = (index + key) % 26
            elif mode == 'decipher':
                index = (index - key) % 26
            text_cyphered += alphabet[index]
        else:
            text_cyphered += letter
    return text_cyphered

text = input('Type a text with 100 characters or less')
key = int(input('Type an integer number to key'))
mode = input("Do you want to 'cypher' ou 'decipher'?")

text_cyphered = CesarCypher(text, key, mode)
print(text_cyphered)