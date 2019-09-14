/Periodicity property

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
x = input("Enter a sequence x(n)=")
X = dft_s(x)
disp(X,"X =")
N = length(x)
n = 0:1:N-1
x2 = x(pmodulo(n-N,N)+1)
disp(x2, "after shifting x, N times x2 =")
X2 = dft_s(x2)
disp(X2, "X2 = ")
if X == X2 then
    disp("Periodic in nature")
    else disp("Not periodic")
end
