function r = rxsym(delta,psm,rho,robc,rx,theta)
%RXSYM
%    R = RXSYM(DELTA,PSM,RHO,ROBC,RX,THETA)

%    This function was generated by the Symbolic Math Toolbox version 8.7.
%    23-Dec-2021 13:35:15

t2 = delta.*2.0;
t3 = cos(t2);
r = (rx.*(rho.*t3+1.0)+psm.*rho.*(cos(t2-theta.*2.0)-t3.*((robc.*2.0)./rx-1.0)))./(rho.*cos(delta-theta)+1.0);
