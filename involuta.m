function invo = involuta(a, b, time)
	t = a:0.1:b;
	X = F(t);
	Y = G(t);
	df = diag(getderivs(F(myAD(t))))';
	dg = diag(getderivs(G(myAD(t))))';
	norm = sqrt((df.^2) .+ (dg.^2));
	s = integral(norm, a, b, 0.1);
	x = X .- t.*df./norm;
	y = Y .- t.*dg./norm;
	[s,v] = size(X);
	for k = 1:v
		plot(X, Y,'-k', x(1:k), y(1:k), '-b')
		axis("equal");
		pause(time);
	end
end
