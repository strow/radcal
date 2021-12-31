% Next do this for a range of delta's, and just for theta = 0 and 45 deg.
clear

addpath /asl/matlib/aslutil

% CR = 0.05:0.001:1.1;
% 
% btl = [205 220 230 240 250 265 280 295 310];
% 
% 
% 
% 
% for i=1:9
%    cri(i) = find(btl(i) < bt(:,45),1);
% end
% 
% CR = 0.05:0.001:1.1
%    cri    CR(cri)     bt(cri,45)   btlabb
% 
%     
%    46.0000    0.0950  205.1634  205.0000
%   104.0000    0.1530  220.0985  220.0000
%   154.0000    0.2030  230.0301  230.0000
%   215.0000    0.2640  240.0919  240.0000
%   287.0000    0.3360  250.1283  250.0000
%   416.0000    0.4650  265.0424  265.0000
%   574.0000    0.6230  280.0550  280.0000
%   761.0000    0.8100  295.0268  295.0000
%   979.0000    1.0280  310.0486  310.0000



% These are the crl
cr = [0.0950 0.1530 0.2030 0.2640 0.3360 0.4650 0.6230 0.8100 1.0280];

delta = 0;
atheta = 0;
theta = deg2rad(atheta);
rho = -0.005;  % V5 value
f = 1000;


rd = [rho delta]
cal.cr = cr;
cal.psm = bt2rad(f,260);
cal.robc = bt2rad(f,308);
cal.theta = theta;

% The truth from LABB
r = rsym(rd,cal);
bt = rad2bt(f,r);

% for cr = 0.1:0.1:1.1
%    rfo(dk,kcr,:) = cr*robc.*ones(1,90);
%    kcr = kcr + 1;
% end

options = optimoptions('lsqcurvefit','Display','none');

cal.robc = bt2rad(f,308.2);
[x,resnorm,res,eflag,out,lambda,jac] = lsqcurvefit(@rsym,[0 0 ],cal,r,-[1E6 1E6 1E6],[1E6 1E6 1E6],options);

ci = nlparci(x,res,'jacobian',jac);
nce = (ci(:,2)-ci(:,1))/2;




ci = nlparci(x,res,'jacobian',jac);
nce = (ci(:,2)-ci(:,1))/2
% nx, nce, nres

