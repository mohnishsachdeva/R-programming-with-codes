
'''Decision-Making Statements in R

Decision-making statements allow a program to execute different blocks of code based on conditions.

1. Check Whether a Number is Positive, Negative, or Zero'''
num <- as.numeric(readline("Enter a number: "))

if(num > 0){
  print("Positive Number")
} else if(num < 0){
  print("Negative Number")
} else{
  print("Zero")
}
'''2. Check Whether a Number is Even or Odd'''
num <- as.integer(readline("Enter a number: "))

if(num %% 2 == 0){
  print("Even Number")
} else{
  print("Odd Number")
}
'''3. Find the Largest of Three Numbers'''
a <- 25
b <- 40
c <- 18

if(a >= b && a >= c){
  print("A is largest")
} else if(b >= a && b >= c){
  print("B is largest")
} else{
  print("C is largest")
}
'''4. Check Voting Eligibility'''
age <- as.integer(readline("Enter age: "))

if(age >= 18){
  print("Eligible to Vote")
} else{
  print("Not Eligible")
}
Looping Statements in R

'''Loops execute a block of code repeatedly.'''

'''1. for Loop'''

Print numbers from 1 to 10.

for(i in 1:10){
  print(i)
}
'''2. while Loop'''

'''Print numbers from 1 to 5.'''

i <- 1

while(i <= 5){
  print(i)
  i <- i + 1
}
'''3. repeat Loop'''

'''Print numbers until 5.'''

i <- 1

repeat{
  print(i)
  i <- i + 1

  if(i > 5){
    break
  }
}
'''Programs Using Loops
1. Sum of First N Natural Numbers'''
n <- 10
sum <- 0

for(i in 1:n){
  sum <- sum + i
}

print(sum)
'''2. Factorial of a Number'''
n <- 5
fact <- 1

for(i in 1:n){
  fact <- fact * i
}

print(fact)
'''3. Multiplication Table'''
num <- 7

for(i in 1:10){
  print(paste(num, "x", i, "=", num*i))
}
'''4. Fibonacci Series'''
n <- 10

a <- 0
b <- 1

print(a)
print(b)

for(i in 3:n){
  c <- a + b
  print(c)
  a <- b
  b <- c
}
'''5. Prime Number Check'''
num <- 17
flag <- TRUE

if(num <= 1){
  flag <- FALSE
}

for(i in 2:(num-1)){
  if(num %% i == 0){
    flag <- FALSE
    break
  }
}

if(flag){
  print("Prime Number")
} else{
  print("Not Prime Number")
}
'''6. Print All Even Numbers from 1 to 100'''
for(i in 1:100){
  if(i %% 2 == 0){
    print(i)
  }
}
'''7. Print All Odd Numbers from 1 to 100'''
for(i in 1:100){
  if(i %% 2 != 0){
    print(i)
  }
}
'''8. Reverse a Number'''
num <- 12345
rev <- 0

while(num > 0){
  digit <- num %% 10
  rev <- rev * 10 + digit
  num <- num %/% 10
}

print(rev)
'''9. Check Armstrong Number'''
num <- 153
temp <- num
sum <- 0

while(temp > 0){
  digit <- temp %% 10
  sum <- sum + digit^3
  temp <- temp %/% 10
}

if(sum == num){
  print("Armstrong Number")
} else{
  print("Not Armstrong Number")
}
'''10. Check Palindrome Number'''
num <- 121
temp <- num
rev <- 0

while(temp > 0){
  digit <- temp %% 10
  rev <- rev * 10 + digit
  temp <- temp %/% 10
}

if(rev == num){
  print("Palindrome")
} else{
  print("Not Palindrome")
}
'''Control Statements'''
break Statement

'''Stops the loop immediately.'''

for(i in 1:10){
  if(i == 6){
    break
  }
  print(i)
}
next Statement

'''Skips the current iteration.'''

for(i in 1:10){
  if(i == 5){
    next
  }
  print(i)
}
