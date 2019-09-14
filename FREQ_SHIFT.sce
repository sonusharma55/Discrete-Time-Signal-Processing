//D.) Frequency Shifting property

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
disp("To Verify : DFT[exp(-i*2*pi*n*l/N)*x(n)] == X(k-l)")
x = input("Enter a sequence x(n)=")
l = input("Enter frequency to be shifted, l = ")
N = length(x)
n = 0:N-1
k = 0:N-1
e = exp(1*%i*2*%pi*k*l/N)
x1 = x.*e
LHS = dft_s(x1)
disp(LHS,"LHS = DFT[exp(i*2*pi*n*l/N)*x(n)] = ")

X = dft_s(x)
disp(X,"X(k) = ")
index = pmodulo(n-l,N)+1
X1 = X(index)
disp(X1,"RHS = X(k-l) = ")


