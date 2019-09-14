//Title:-Circular Convolution  ||  Sonu Sharma,Roll No-B630
clc
x = input("Enter sequence x(n)=")
h = input("Enter sequence h(n)=")
N = length(x)
n = 0:1:N-1
k = 0:1:N-1
w = exp(-1*%i*2*%pi/N)
z = n'*n
TF = w.^z
X = x*TF
H = h*TF
disp(X,"X(k) = ")
disp(H,"H(k) = ")

Y = X.*H
disp(Y,"Y(k) = ")

TFI = (1/w).^z
y = Y*TFI/N
disp(y,"Final output  ,y(n) = ")
