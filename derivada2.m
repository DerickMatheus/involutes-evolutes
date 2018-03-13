function d = derivada2(x, i)
        e = 0.0001;
        if (i == 1)
                d = (derivada(F(x-e), 1) - derivada(F(x+e), 1))/((x - e) -(x + e));
        end
        if (i == 2)
                d = (derivada(G(x-e), 2) - derivada(G(x+e), 2))/((x-e) - (x + e));
        end
end

