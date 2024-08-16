n <- 222
num<-n  
rev<-0  
while(n!=0){  
    rem<-n%%10  
    rev<-rem+(rev*10)  
    n<-as.integer(n/10)  
}  
print(rev)  
if(rev==num){  
    cat(num,"is a palindrome num")  
}else{  
    cat(num,"is not a palindrome number")  
}  
