%obliczanie wartości pochodnych funkcji bazowych

function result = de(i, n, x)
h = 2/n;
if ( x>= (i-1)*h && x < i*h)
	result = 1/h;
elseif(  x>= i*h && x< (i+1) *h)
	result = -1/h;
else
	result = 0;
end



end