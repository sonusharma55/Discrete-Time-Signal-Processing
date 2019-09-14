//C.) Time Shifting property

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
disp("To Verify : DFT[x(n-l)] == X(k)*exp(-i*2*pi*l*k/N)")
x = input("Enter a sequence x(n)=")
l = input("Enter time to be shifted, l = ")
N = length(x)
n = 0:N-1
k = 0:N-1
index = pmodulo(n-l,N)+1
x1 = x(index)
disp(x1,"x(n-l) = ")
LHS = dft_s(x1)
disp(LHS,"LHS = DFT[x(n-l)] = ")

X = dft_s(x)
disp(X,"X(k) = ")
e = exp(-1*%i*2*%pi*k*l/N)
RHS = X.*e
disp(RHS,"RHS = X(k)*exp(i*2*pi*l*k/N) = ")

