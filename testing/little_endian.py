inp = input("Enter string:")
inp = inp.split()
inp = inp[::-1]
inp = '\\x'.join(inp)
inp = "\\x" + inp
print(inp)