li=[]
vowels=['a','e','i','o','u']
w=input("enter the word");
for i in w:
    if(i not in vowels and i not in li):
        li.append(i)
print("consonants in the given words are",li)
