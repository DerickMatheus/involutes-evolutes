function d = cDerivada(a, b, eps, c)
d = [];
for i = a:c:b
d = [d ; ((G(i+eps))-(G(i-eps)))/(2*eps)];
end
end