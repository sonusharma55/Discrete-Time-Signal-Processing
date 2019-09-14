//D.) Multiplication Theorem

clear
function[X] = dft_s(x)
    N = length(x)
    n = 0:N-1
    w = exp(-1*%i*2*%pi/N)
    z = n'*n
    TF = w.^z
    X = x*TF
endfunction

function[a] = idft_s(A)
    Na = length(A)
    na = 0:Na-1
    wa = exp(%i*2*%pi/Na)
    za = na'*na
    TFa = wa.^za
    a = (A*TFa)/Na
endfunction

clc
disp("To Verify :DFT[Multiplication in time domain] == Convolution in frequency domain/N")
x1 = input("Enter a sequence x1(n)=")
x2 = input("Enter another sequence x2(n)=")
N = length(x1)
n = 0:N-1
k = 0:N-1
x = x1.*x2
disp(x,"Multiplication in time domain = ")
X = dft_s(x)
disp(X,"LHS = DFT[Multiplication in time domain] = ")

X1 = dft_s(x1)
disp(X1,"X1(k) = ")
X2 = dft_s(x2)
disp(X2, "X2(k) = ")

//conv of X1 and X2
X11 = dft_s(X1)
X22 = dft_s(X2)
XX = X11.*X22
RHS = idft_s(XX)/N
disp(idft_s(RHS))
disp(RHS,"RHS = Convolution in frequency domain/N =")
