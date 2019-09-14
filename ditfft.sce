clc
x = input("Enter sequence x(n) = ")
N = length(x)
n = 1:N
k = 1:N
w1 = exp(-1*%i*2*%pi/N)
w2 = exp(-1*%i*4*%pi/N)
for i=1:N
    if(((i+1)/2) == (floor((i+1)/2)))
        xe((i+1)/2) = x(i)
    else
        xo(i/2) = x(i)
    end
end
disp(xe,xo)
for k=1:N
    G(k) = 0
    for n = 1:N/2
        G(k)= G(k)+xe(n)*w2^((n-1)*(k-1))
    end
end

for k=1:N
    H(k) = 0
    for n = 1:N/2
        H(k) = H(k)+xo(n)*(w2^((n-1)*(k-1)))
    end
end

for k=1:N
    X(k) = G(k) + (w1^(k-1))*H(k)
    disp((w1^(k-1))*H(k))
end

disp(X,"X(k) = ")




