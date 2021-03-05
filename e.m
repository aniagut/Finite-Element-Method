%obliczanie wartosci funkcji bazowych

function result = e(i, n, x)
h = 2/n;
if ( x>= (i-1)*h && x <= i*h)
	result = (x- (i-1)*h)/h;
elseif(  x>= i*h && x<=(i+1) *h)
	result = ((i+1) * h -x)/h;
else
	result = 0;
end
end