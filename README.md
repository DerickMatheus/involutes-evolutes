# involutes-evolutes

This script plot involute and evolute using simple calculations on octave, using Automatic Differentiation for Matlab. to run this script:

$ CI(i, a, b, t, F, G)

where

i = function type, 1 for evolute 
				   2 for involute 
a = inferion lim. of the function
b = superior lim. of the function
t = frame time interval, recommend short t, i.e. < 0.1
F = function F (for example "x^2") 
G = function G (for example "sin(x)")

usage example

CI(2, -10, 10, 0.1, "x+2.*sin(2.*x)", "x")

CI(1, -10, 10, 0.1, "cos(x).^3" ,"sin(x).^3")


obs.: Automatic Differentiation for Matlab -> https://www.mathworks.com/matlabcentral/fileexchange/15235-automatic-differentiation-for-matlab?focused=5092251&tab=function&s_tid=gn_loc_drop
