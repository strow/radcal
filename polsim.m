% Next do this for a range of delta's, and just for theta = 0 and 45 deg.



clear

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


dk = 1;
for delta = 0:pi/8:2*pi

atheta = -44.5:1:44.5;
theta = deg2rad(atheta);
delta = pi/4;  % V5 value
rho = -0.005;  % V5 value
f = 1000;


psm = bt2rad(f,260);
robc = bt2rad(f,308);



%rx = bt2rad(f,bx);

kcr = 1;
for CR = 0.05:0.001:1.1
   r(kcr,:) = rsym(CR,delta,psm,rho,robc,theta);
   kcr = kcr + 1;
end

   
for i=1:11
   for j = 1:90
      bt(dk,i,j) = rad2bt(f,r(dk,i,j));
   end
end


kcr = 1;
for cr = 0.1:0.1:1.1
   rfo(dk,kcr,:) = cr*robc.*ones(1,90);
   kcr = kcr + 1;
end



for i=1:11
   for j = 1:90
      btfo(dk,i,j) = rad2bt(f,rfo(dk,i,j));
   end
end

dk = dk + 1
end

adelta = 0:pi/8:2*pi;