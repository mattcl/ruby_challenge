import pickle

f = open('problem5.p', 'rb')
data = pickle.load(f)
for row in data:
    str = ''
    for ch, num in row:
        str += ch * num
    print str
