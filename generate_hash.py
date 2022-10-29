import hashlib
import string
import json

def writeToJSONFile(path, fileName, data):
    filePathNameWExt = './' + path + '/' + fileName + '.json'
    with open(filePathNameWExt, 'w') as fp:
        json.dump(data, fp)


path = './Sources/CrackStation'
fileName = 'hash_dictionary'

data = {}

for i in range(48, 123):
    if (i not in range(58,65)) and (i not in range(91,97)):
        #print(chr(i), end = "\n")
        s = str(chr(i))
        result = hashlib.sha1(s.encode())
        hashValue = result.hexdigest()
        data[s] = hashValue
        #print(s, hashValue)
        for j in range(48, 123):
            if (j not in range(58,65)) and (j not in range(91,97)):
                a = str(chr(i)+chr(j))
                #print(chr(i),chr(j))
                #print(a, end=" ")
                result = hashlib.sha1(a.encode())
                hashValue = result.hexdigest()
                #print(a, hashValue)
                data[a] = hashValue

writeToJSONFile(path, fileName, data)






# 0-9 ascii [48-57]
# A-Z ascii [65-90]
# a-z ascii [97-122]

# for letter in string.ascii_lowercase:
#     result = hashlib.sha1(letter.encode())
#     hashValue = result.hexdigest()
#     #print(letter, hashValue)
#     data[letter] = hashValue
# #print(data)

# for letter in string.ascii_uppercase:
#     result = hashlib.sha1(letter.encode())
#     hashValue = result.hexdigest()
#     #print(letter, hashValue)
#     data[letter] = hashValue

# for i in range(0,10):
#     number = str(i)
#     result = hashlib.sha1(number.encode())
#     hashValue = result.hexdigest()
#     #print(letter, hashValue)
#     data[i] = hashValue


#print(data)