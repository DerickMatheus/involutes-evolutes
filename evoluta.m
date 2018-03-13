function invo = evoluta(a, b, time)
	t = a:0.1:b;
	X = F(t);
	Y = G(t);

	df = diag(getderivs(F(myAD(t))))';
	dg = diag(getderivs(G(myAD(t))))';
	ddf_aux = getsecderiv(F(myA2D(t)));
	ddg_aux = getsecderiv(G(myA2D(t)));
	
	[trash,sz] = size(t);
	ddf = eye(sz) - eye(sz);
	ddg = ddf;

	for i = 1:sz
		ddf = ddf .+ ddf_aux(:,:,i);
		ddg = ddg .+ ddg_aux(:,:,i);
	end
	ddf = diag(ddf)';
	ddg = diag(ddg)';
	norm = ((df.^2) + (dg.^2));
	cruze = (ddg.*df) .- (ddf.*dg);
	x = X + (norm./cruze).*((-1).*dg);
	y = Y + (norm./cruze).*(df);
	[s,v] = size(x);
	for k = 1:v
		plot(X, Y,'-k', x(1:k), y(1:k), '-b')
		axis("equal");
		pause(time);
	end
end
