import hashlib
import string
import json

def writeToJSONFile(path, fileName, data):
    filePathNameWExt = './' + path + '/' + fileName + '.json'
    with open(filePathNameWExt, 'w') as fp:
        json.dump(data, fp)


path = './Sources/CrackStation'
fileName1 = 'hash_dictionary'

SHA1data = {}

for i in range(48, 123):
    if (i not in range(58,65)) and (i not in range(91,97)):
        #print(chr(i), end = "\n")
        s = str(chr(i))
        result1 = hashlib.sha1(s.encode())
        hashValue1 = result1.hexdigest()
        SHA1data[hashValue1] = s
        result2 = hashlib.sha256(s.encode())
        hashValue2 = result2.hexdigest()
        SHA1data[hashValue2] = s
        #print(s, hashValue1)
        #print(s, hashValue2)
        #print(s, hashValue)
        for j in range(48, 123):
            if (j not in range(58,65)) and (j not in range(91,97)):
                a = str(chr(i)+chr(j))
                #print(chr(i),chr(j))
                #print(a, end=" ")
                result1 = hashlib.sha1(a.encode())
                hashValue1 = result1.hexdigest()
                SHA1data[hashValue1] = a
                result2 = hashlib.sha256(a.encode())
                hashValue2 = result2.hexdigest()
                SHA1data[hashValue2] = a
                #print(a, hashValue1)
                #print(a, hashValue2)
            for k in range(48, 123):
                if (j not in range(58,65)) and (j not in range(91,97)):
                    b = str(chr(i)+chr(j)+chr(k))
                    result1 = hashlib.sha1(b.encode())
                    hashValue1 = result1.hexdigest()
                    SHA1data[hashValue1] = b
                    result2 = hashlib.sha256(b.encode())
                    hashValue2 = result2.hexdigest()
                    SHA1data[hashValue2] = b
                    #print(b, hashValue1)
                    #print(b, hashValue2)

writeToJSONFile(path, fileName1, SHA1data)