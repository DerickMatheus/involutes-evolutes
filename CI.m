function CI(i, a, b, timer, f, g)
	makef(f, 'F');
	makef(g, 'G');
	if (i == 2)
		involuta (a, b, timer);
	else if (i == 1)
		evoluta (a, b, timer);
	end
end
