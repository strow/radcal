clear all

syms CR
syms robc
syms rho
syms delta
syms psm
syms theta

r = (CR * robc*(1 + rho * cos(2 * delta)));
r = r - rho * psm * ((2*CR - 1)*cos(2 * delta) - cos(2*(theta - delta)));
r = r/(1 + rho * cos(theta - delta));

% g = matlabFunction(r);
matlabFunction(r,'File','rsym');

% ro = subs(r,theta,0);

% Turn CR * robc into sym rx (estimated) r
clear r
% Will be using CR * robc == rx
syms rx

r = (rx*(1 + rho * cos(2 * delta)));
r = r - rho * psm * ((2*robc/rx - 1)*cos(2 * delta) - cos(2*(theta - delta)));
r = r/(1 + rho * cos(theta - delta));

matlabFunction(r,'File','rxsym');

%ro = subs(r,theta,0);

% Turn ro into a number, using particular set variables, and then form.  Each time change
% a variable, redo the ratio below.

%(r - ro)/rx

atheta = -44.5:1:44.5;
theta = deg2rad(atheta);
delta = pi/4;%pi/4;  % V5 value
rho = -0.005;  % V5 value
f = 1000;
for i = 1:6
%   bx = 220 + (i-1)*15
   bx = 150 + (i-1)*15

   % bx = 220;

rx = bt2rad(f,bx);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

rxfull = rxsym(delta,psm,rho,robc,rx,theta);


% dr = rxfull-min(rxfull);
% deriv = drdbt(f,bx);
% dbt = dr./deriv;

% TVAC
dr = rx - rxfull;
deriv = drdbt(f,bx);
dbt(i,:) = dr./deriv;



abx(i) = bx;

end




