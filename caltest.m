f = 1000;

count = (0:1:155)/155;

% High non-linearity, really more like -0.02 or -0.01
beta = -0.3;

% Detector response, no background, no polarization
rraw =  count + beta*count.^2;

rsl = bt2rad(1000,330)/max(rraw);

rraw = rraw.*rsl;   % Max BT == 330K

radsl = bt2rad(f,330);
robc  = bt2rad(f,308);
roff  = bt2rad(f,220);

rlin = count.*radsl;
rraw = rraw.*radsl;

% Count x locations
sv_rx = 251
obc_x = 1; 
hot_x = 1.100000000000000;

% Count pt locations
sv_pt = 40;   % about 239 KK
obc_pt = 113; % 308.2721
hot_pt = 156; % 330.3979

% Obc true radiance 
robc = bt2rad(1000,rx(113));

% True slope (no non-linearity)
slope = robc;   % (robc - 0 )/(1)

% Observed radiance vs counts
y = slope .* yraw;

% Now add an offset to y
roff = 20;
ym = y + roff;

bt = false;
%bt = true;

figure;
if bt
   plot(x,rad2bt(f,y),'-o')
   hold on;
   plot(x,rad2bt(f,ym),'-+')
   plot(x,rad2bt(f,robc*x),'-','linewidth',2,'color',[0.7 0.7 0.7])
else
   plot(x,y,'-o')
   hold on;
   plot(x,ym,'-+')
   plot(x,robc*x,'-','linewidth',2,'color',[0.7 0.7 0.7])
end

% Now switch units so ym is forced to robc at obc_x (x = 101)
% xslope = y(101);
% 
% ycal = ym*xslope/slope + roff;

%  Robs - R_SV
dr_measured = ym(101)-ym(1);
dr_real = robc*x(101);


% % Wrong below backwards.   Counts are non-linear!!
% 
% % Counts set so count == 1 at OBC
% x = 0:0.01:1.2;
% 
% % High non-linearity, really more like -0.02 or -0.01
% beta = -0.3;
% 
% % Detector response, no background, no polarization
% yraw =  x + beta*x.^2;
% 
% % Count x locations
% sv_x = 0.2;
% obc_x = 1; 
% hot_x = 1.100000000000000;
% 
% % Count pt locations
% sv_pt = find(x == sv_x);
% obc_pt = find(x == obc_x);
% hot_pt = find(x > hot_x,1);
% hot_pt = hot_pt -1;
% x(hot_pt) - hot_x
% 
% % Set channel frequency
% f = 1000;   
% 
% % Obc true radiance 
% robc = bt2rad(1000,308);
% 
% % True slope (no non-linearity)
% slope = robc;   % (robc - 0 )/(1)
% 
% % Observed radiance vs counts
% y = slope .* yraw;
% 
% % Now add an offset to y
% roff = 20;
% ym = y + roff;
% 
% bt = false;
% %bt = true;
% 
% figure;
% if bt
%    plot(x,rad2bt(f,y),'-o')
%    hold on;
%    plot(x,rad2bt(f,ym),'-+')
%    plot(x,rad2bt(f,robc*x),'-','linewidth',2,'color',[0.7 0.7 0.7])
% else
%    plot(x,y,'-o')
%    hold on;
%    plot(x,ym,'-+')
%    plot(x,robc*x,'-','linewidth',2,'color',[0.7 0.7 0.7])
% end
% 
% % Now switch units so ym is forced to robc at obc_x (x = 101)
% % xslope = y(101);
% % 
% % ycal = ym*xslope/slope + roff;
% 
% %  Robs - R_SV
% dr_measured = ym(101)-ym(1);
% dr_real = robc*x(101);
% 
% 
% 
