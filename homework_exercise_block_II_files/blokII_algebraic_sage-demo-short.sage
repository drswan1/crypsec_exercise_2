def str2lst(s):
    return [ord(x) - 65 for x in s]

def lst2str(lst):
    return "".join([chr(int(x)+65) for x in lst]);


u = int('0x1F600',16);
print("Shift value u = ", u);
v = u - 64;
print("\n");


def encr(pltxt):
    plst = str2lst(pltxt);
    c = [x + v for x in plst];
    return lst2str(c);

def decr(ctxt):
    clst = str2lst(ctxt);
    plst = [x - v for x in clst];
    return lst2str(plst);


mystr = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
print("Plaintext: ", mystr);
print("Encry: ", encr(mystr));
print("");


#myciphertxt = "😇😈"
#print("Ciphertext: ", myciphertxt);
#print("Decr: ", decr(myciphertxt));