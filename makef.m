function makef (str, name);
	fname=strcat(name, '.m');
	fout = fopen (fname, 'w');
	fprintf(fout, 'function y = %s (x)\n', name);
	fprintf(fout, 'y = %s ;\n end', str);
	fclose(fout);
end
