
from random import *

print("")
print("imei generator!!".center(50).upper())


import re
import math 


def calculate(e):
      

    imei_to_list=[]
    all_odds=[]
    all_evens=[]
    doubled_even=[]
    even_total=0
    odd_total=0
    
    imei_to_list=list(e)
    all_odds=imei_to_list[::2]
    all_evens=imei_to_list[1::2]
        
    for x in all_evens:
        h=int(x)*2
        doubled_even.append(str(h))
    doubled_even="".join(doubled_even)
        
    for x in doubled_even:
        even_total+=int(x)
    all_odds="".join(all_odds)
        
    for x in all_odds:
        odd_total+=int(x)
    add_up=even_total+odd_total
    divide_up=add_up%10
        
    if divide_up==0:
        print("")
        print("full imei: ",
        e+str(divide_up))
            	
    else:
        after_sub=10-divide_up
        print("")
        print("full imei: ",
        e+str(after_sub))
            


print("enter the first 9 digits of your imei")
print("")

while True:
     print("")
     imei=input("ENTER IMEI: ")
     if re.search(r"\D",imei)  or imei=="":
         print("please enter 14 digits")
         print("")
     elif len(imei)<9:
         print("invalid length")
         print("imei less than 9 digits")
         print("")
     elif len(imei)>9:
         print("invalid length")
         print("imei greater then 9 digits")
         print("")
     else:
         imei=str(imei)
         for n in range(20):
              get_digits=""
              five_digits=""
              full_digits=""         
       
              for n in range(10):
                  get_digits=get_digits+str(n)
              
              for n in range(5):
                  five_digits=five_digits+str(choice(get_digits))
              
              full_digits=imei+five_digits
              calculate(full_digits)



             
                     
                      
  