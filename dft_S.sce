// Title:-DFT And IDFT  ||  Sonu Sharma,Roll No-B630

clc
x = input("Enter a sequence x(n)=")
N = length(x)
n = 0:1:N-1
k = 0:1:N-1
w = exp(-1*%i*2*%pi/N)
z = n'*n
TF = w.^z
disp(TF,"Twidle factor matrix")
X = x*TF
disp(X,"X(k) = ")

//Plotting Magnitude spectrum
plot2d3(k,abs(X))
plot2d(-1,0)
title("Magnitude Spectrum ")
xlabel("Frequency (k) -->")
ylabel("Magnitude |X(k)| -->")

//IDFT
TFI = (1/w).^z
x1 = X*TFI/N
disp(x1,"x(n) = ")




