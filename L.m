%wype³nianie wektora wyrazów wolnych L
%calkowanie metoda kwadratury Gaussa

function result = L(v,n)
h=2/n;
v=v-1;
result=h*(f(h*(1/sqrt(3))+v*h)*e(v,n,h*(1/sqrt(3))+v*h)+f(h*(-1/sqrt(3))+v*h)*e(v,n,h*(-1/sqrt(3))+v*h));