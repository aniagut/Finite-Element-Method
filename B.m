%wype³nianie macierzy B 
%calkowanie metoda kwadratury Gaussa

function result = B(u,v,n)
h=2/n;
%wyrazy w macierzy indeksowane od 1, a chcemy od 0
u=u-1;
v=v-1;
result=-e(u,n,2)*e(v,n,2);
%dolna przekatna
if u-v==1
    result=result+(h/2)*(de(u,n,(h/2)*(1/sqrt(3))+(2*u*h-h)/2)*de(v,n,(h/2)*(1/sqrt(3))+(2*u*h-h)/2)+de(u,n,(h/2)*(-1/sqrt(3))+(2*u*h-h)/2)*de(v,n,(h/2)*(-1/sqrt(3))+(2*u*h-h)/2));
    result=result-(h/2)*(e(u,n,(h/2)*(1/sqrt(3))+(2*u*h-h)/2)*e(v,n,(h/2)*(1/sqrt(3))+(2*u*h-h)/2)+e(u,n,(h/2)*(-1/sqrt(3))+(2*u*h-h)/2)*e(v,n,(h/2)*(-1/sqrt(3))+(2*u*h-h)/2));
%gorna przekatna
elseif u-v==-1
    result=result+(h/2)*(de(u,n,(h/2)*(1/sqrt(3))+(2*u*h+h)/2)*de(v,n,(h/2)*(1/sqrt(3))+(2*u*h+h)/2)+de(u,n,(h/2)*(-1/sqrt(3))+(2*u*h+h)/2)*de(v,n,(h/2)*(-1/sqrt(3))+(2*u*h+h)/2));
    result=result-(h/2)*(e(u,n,(h/2)*(1/sqrt(3))+(2*u*h+h)/2)*e(v,n,(h/2)*(1/sqrt(3))+(2*u*h+h)/2)+e(u,n,(h/2)*(-1/sqrt(3))+(2*u*h+h)/2)*e(v,n,(h/2)*(-1/sqrt(3))+(2*u*h+h)/2));
%przekatna
else
    %prawy dolny rog macierzy-dziedzina funkcji bazowej poza dziedzina
    %funkcji u
    if u==n
        result=result+h/2*((de(u,n,h/2*(1/sqrt(3))+(2*u*h-h)/2))^2+(de(u,n,h/2*(-1/sqrt(3))+(2*u*h-h)/2))^2);
        result=result-h/2*((e(u,n,h/2*(1/sqrt(3))+(2*u*h-h)/2))^2+(e(u,n,h/2*(-1/sqrt(3))+(2*u*h-h)/2))^2);
    else
        result=result+h*((de(u,n,h*(1/sqrt(3))+u*h))^2+(de(u,n,h*(-1/sqrt(3))+u*h))^2);
        result=result-h*((e(u,n,h*(1/sqrt(3))+u*h))^2+(e(u,n,h*(-1/sqrt(3))+u*h))^2);
    end
end
end