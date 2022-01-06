function c = redyellowblueTecplot(m)
%REDBLUE    Shades of red and blue color map
%   REDBLUETecplot(M), is an M-by-3 matrix that defines a colormap.
%   The colors match Tecplot's Diverging Redblue plot.
%   REDBLUETecplot, by itself, is the same length as the current figure's
%   colormap. If no figure exists, MATLAB creates one.
%
%   For example, to reset the colormap of the current figure:
%
%             colormap(redblueTecplot)
%
%   See also HSV, GRAY, HOT, BONE, COPPER, PINK, FLAG, 
%   COLORMAP, RGBPLOT.
% Inspired from https://www.mathworks.com/matlabcentral/fileexchange/25536-red-blue-colormap
%   Fernando Zigunov, 2018
if nargin < 1, m = size(get(gcf,'colormap'),1); end
%Colormap key colors from Tecplot
rT=[69 145 223 255 255 255 225]/255;
gT=[117 191 242 255 226 151 36]/255;
bT=[180 219 247 204 145 95 26]/255;
pos=linspace(0,1,7);
%Interpolates given the colormap positions
posDesired=linspace(0,1,m);
r = interp1(pos,rT,posDesired);
g = interp1(pos,gT,posDesired);
b = interp1(pos,bT,posDesired);
c = [r.' g.' b.']; 