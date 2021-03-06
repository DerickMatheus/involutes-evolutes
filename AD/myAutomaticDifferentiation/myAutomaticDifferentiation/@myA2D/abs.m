function x = abs(x)
% In Package myA2D - Automatic Differentiation of 1st and 2nd Derivative
% by Martin Fink, June 2006
% martinfink 'at' gmx.at

    x.secderiv = valX2der(sign(x.values), x.secderiv);
    x.derivatives = valXder(sign(x.values), x.derivatives);
    x.values = abs(x.values);

