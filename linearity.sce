// Title: Properties of DFT, || Sonu Sharma, RollNo -530

//A). Linearity Property

clear
function[X] = dft_s(x)
    N = length(x)
    n = 0:1:N-1
    w = exp(-1*%i*2*%pi/N)
    z = n'*n
    TF = w.^z
    X = x*TF
endfunction

clc
disp("To Verify : DFT[a1*x1(n) + a2*x2(n)] == a1*X(k) + a2*X(k)")
x1 = input("Enter a sequence x1(n)=")
x2 = input("Enter another sequence x2(n)=")
a1 = input("Enter a scalar a1 =")
a2 = input("Enter another scalar a2 =")
x = a1*x1 + a2*x2
disp(x,"x(n) = a1*x1(n) + a2*x2(n) = ")
LHS = dft_s(x)
disp(LHS,"LHS = ")

X1 = dft_s(x1)
disp(X1,"X1(k) = ")
X2 = dft_s(x2)
disp(X2,"X2(k) = ")
RHS = a1*X1 + a2*X2
disp(RHS, "RHS = ") 
