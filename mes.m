function  u = mes(n)
h=2/n;
B_matrix = zeros(n+1,n+1); %macierz
L_vector = zeros(n+1,1); %wyrazy wolne
%ywmuszenie warunku brzegowego Dirichleta z lewej strony
B_matrix(1,1)=1;
%wektor wyrazów wolnych
for i=2:n+1
	L_vector(i,1) = L(i,n);
end
%przekatna macierzy
for i=2:n+1
    B_matrix(i,i)=B(i,i,n);
end
%dolna przekatna macierzy
for i=2:n
    j=i+1;
    B_matrix(i,j)=B(i,j,n);
end
%gorna przekatna macierzy
for i=3:n+1
    j=i-1;
    B_matrix(i,j)=B(i,j,n);
end
%rozwiazanie ukladu równan
wynik = B_matrix\L_vector;
x = 0: h: 2;
%wektor wspó³czynnikow u
U_vec=zeros(1,n+1);

for i=1:n+1
    U_vec(i)=wynik(i,1);  
end
for i = 1:length(x)
res = 0;
	for j = 1 : n+1
        res = res + U_vec(j)*e(j-1,n,x(i)) ;
    end
y(i) =res;
end
plot(x,y);
det(B_matrix)
end