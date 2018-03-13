function d = derivada(a, b, eps, c, func)
	fout = fopen('cDerivada.m', 'w');
	fprintf (fout, 'function d = cDerivada(a, b, eps, c)\nd = [];\nfor i = a:c:b\nd = [d ; ((%s(i+eps))-(%s(i-eps)))/(2*eps)];\nend\nend', func, func);
	fclose (fout);
	d = cDerivada(a, b, eps, c);
	d = d';
end
