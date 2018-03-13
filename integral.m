function i = integral(func, a, b, c)
	i = [];
	[s,v] = size(func);
	for j = 1:v
		i = [i (c*(norm(j+1) - norm(j))/2)];
	end
end
