//Title :- Parseval Theorem  ||  Sonu Sharma, Roll No -B630
clear
function[X] = dft_s(x)
    N = length(x)
    n = 0:1:N-1
    w = exp(-1*%i*2*%pi/N)
    z = n'*n
    TF = w.^z
    disp(TF,"Twidle factor matrix")
    X = x*TF
endfunction

clc
disp("To Verify : Energy in time domain == Energy in frequency domain")
x = input("Enter a sequence x(n)=")
X = dft_s(x)
disp(X,"X(k) = ")
N = length(x)

Etd = sum(abs(x).^2)
Efd = sum(abs(X).^2)/N
disp(Etd,"Energy in time domain  Etd = ")
disp(Efd,"Energy in frequency domain  Efd = ")
