//B.) Time Reversal property

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
disp("To Verify : DFT[x(-n)] == X(-k)")
x = input("Enter a sequence x(n)=")
X = dft_s(x)
disp(X,"X(k) = ")
N = length(x)
n = 0:N-1
index = pmodulo(N-n,N)+1
x1 = x(index)
disp(x1,"x(-n) = ")
X1 = dft_s(x1)
disp(X1,"DFT[x(-n)] = ")
