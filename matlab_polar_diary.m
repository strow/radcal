
                                             < M A T L A B (R) >
                                   Copyright 1984-2021 The MathWorks, Inc.
                               R2021a Update 3 (9.10.0.1684407) 64-bit (maci64)
                                                 May 27, 2021

 
To get started, type doc.
For product information, visit www.mathworks.com.
 
L. Strow: Setting Plot Params
>> run('/Users/strow/.emacs.d/elpa/matlab-mode-20200106.2217/toolbox/emacsinit');emacs.set('clientcmd', 'emacsclient -n -s /var/folders/w0/ll7y3hs93ks61x18jd08t5yr0000gn/T/emacs501/server-75643');
Updating MATLAB Path to support Emacs toolbox: addpath(/Users/strow/.emacs.d/elpa/matlab-mode-20200106.2217/toolbox)
>> nucal_post
Error using load
Unable to read file 'rtp_airicrad_ecmwf_rad_kl_2021_clear_desc_ocean.mat'. No such file or directory.

Error in nucal_post (line 4)
load rtp_airicrad_ecmwf_rad_kl_2021_clear_desc_ocean.mat
 
>> pwd

ans =

    '/Users/strow/Work/Airs/Freqcal/Oct2021'

>> nucal_post
>> whos difffreq
  Name           Size               Bytes  Class     Attributes

  difffreq      11x2378            209264  double              

>> clf
>> plot(fairs,nanmean(difffreq))
Error using plot
Vectors must be the same length.
 
>> plot(f,nanmean(difffreq))
>> plot(fdifffreq)

Unrecognized function or variable 'fdifffreq'.
 

>> 
>> 
>> plot(f,difffreq)
>> df = nanmean(difffreq);
>> ppmd = 1E6*df/f;
Error using /
Matrix dimensions must agree.
 
>> whos df
  Name      Size              Bytes  Class     Attributes

  df        1x2378            19024  double              

>> whos f
  Name         Size            Bytes  Class     Attributes

  f         2378x1             19024  double              

>> ppmd = 1E6*df/f';
>> plot(f,ppmd)
>> whos ppmd
  Name      Size            Bytes  Class     Attributes

  ppmd      1x1                 8  double              

>> ppmd = 1E6*df./f';
>> plot(f,ppmd)
>> nanmean(ppmd)

ans =

   -9.4063

>> max(ppmd)

ans =

   -8.0641

>> min(ppmd)

ans =

  -10.7674

>> pwd

ans =

    '/Users/strow/Work/Airs/Freqcal/Oct2021'

>> cd ~/Work/Airs/Chan_Prop_Files/
>> ls -lt *.mat
lrwxr-xr-x 1 strow staff       61 Feb  2  2016 ab.mat -> /Users/strow/Work/Airs/Chan_Prop_Files/ab_upto_2015_03_23.mat
-rw-r--r-- 1 strow staff    23113 Feb  2  2016 ab_upto_2015_03_23.mat
-rw-r--r-- 1 strow staff 55512474 Feb  2  2016 clist_upto_2015_03_23.mat
-rw-r--r-- 1 strow staff  2050154 Feb  2  2016 chan_prop.2012.07.01.v9.5.3.mat
-rw-r--r-- 1 strow staff  2050212 Feb  2  2016 chan_prop.2013.06.10.v9.5.3.mat
-rw-r--r-- 1 strow staff  2050194 Feb  2  2016 chan_prop.2015.03.23.v9.5.3.mat
-rw-r--r-- 1 strow staff  2050460 Feb  2  2016 chan_prop.2011.07.01.v9.5.3.mat
-rw-r--r-- 1 strow staff  2050032 Feb  2  2016 chan_prop.2011.10.09.v9.5.3.mat
-rw-r--r-- 1 strow staff  2050460 Feb  2  2016 chan_prop.2011.10.10.v9.5.3.mat
-rw-r--r-- 1 strow staff  2050079 Feb  2  2016 chan_prop.2012.01.21.v9.5.3.mat
-rw-r--r-- 1 strow staff  2050362 Feb  2  2016 chan_prop.2010.01.26.v9.5.3.mat
-rw-r--r-- 1 strow staff  2050420 Feb  2  2016 chan_prop.2010.07.01.v9.5.3.mat
-rw-r--r-- 1 strow staff  2050496 Feb  2  2016 chan_prop.2011.01.01.v9.5.3.mat
-rw-r--r-- 1 strow staff  2050098 Feb  2  2016 chan_prop.2008.01.01.v9.5.3.mat
-rw-r--r-- 1 strow staff  2050159 Feb  2  2016 chan_prop.2008.07.01.v9.5.3.mat
-rw-r--r-- 1 strow staff  2050087 Feb  2  2016 chan_prop.2009.01.01.v9.5.3.mat
-rw-r--r-- 1 strow staff  2050118 Feb  2  2016 chan_prop.2009.07.01.v9.5.3.mat
-rw-r--r-- 1 strow staff  2050056 Feb  2  2016 chan_prop.2006.01.01.v9.5.3.mat
-rw-r--r-- 1 strow staff  2050107 Feb  2  2016 chan_prop.2006.07.01.v9.5.3.mat
-rw-r--r-- 1 strow staff  2050048 Feb  2  2016 chan_prop.2007.01.01.v9.5.3.mat
-rw-r--r-- 1 strow staff  2050106 Feb  2  2016 chan_prop.2007.07.01.v9.5.3.mat
-rw-r--r-- 1 strow staff  2050021 Feb  2  2016 chan_prop.2003.11.19.v9.5.3.mat
-rw-r--r-- 1 strow staff  2049970 Feb  2  2016 chan_prop.2004.07.01.v9.5.3.mat
-rw-r--r-- 1 strow staff  2050068 Feb  2  2016 chan_prop.2005.03.01.v9.5.3.mat
-rw-r--r-- 1 strow staff  2050072 Feb  2  2016 chan_prop.2005.07.01.v9.5.3.mat
-rw-r--r-- 1 strow staff  2049831 Feb  2  2016 chan_prop.2002.08.30.v9.5.3.mat
-rw-r--r-- 1 strow staff  2049856 Feb  2  2016 chan_prop.2002.09.17.v9.5.3.mat
-rw-r--r-- 1 strow staff  2050232 Feb  2  2016 chan_prop.2002.10.22.v9.5.3.mat
-rw-r--r-- 1 strow staff  2049895 Feb  2  2016 chan_prop.2003.01.10.v9.5.3.mat

>> g = load('chan_prop.2015.03.23.v9.5.3.mat');
>> g

g = 

  struct with fields:

        abst: [2378x1 int32]
       cfreq: [2378x1 double]
         cij: [2378x1 double]
        cind: [2378x1 int32]
        cmod: {2378x1 cell}
        cnum: [2378x1 int32]
     comment: {2378x1 cell}
          cx: [2378x1 double]
          cy: [2378x1 double]
         fit: [2378x1 double]
        fwhm: [2378x1 double]
    l2ignore: [2378x1 int32]
        nedt: [2378x1 double]
        qual: [2378x1 int32]

>> figure
>> plot(f,g.cfreq)
>> plot(f,g.fwnm)
Unrecognized field name "fwnm".
 
>> plot(f,g.fwhm)
>> %ppmd = 1E6*df./f';
>> plot(f,100*df./g.fwhm)
>> plot(f,100*df./g.fwhm')
>> pc_srfd = 100*df./g.fwhm';
>> nanmean(pc_srfd)

ans =

   -1.2009

>> min(pc_srfd)

ans =

   -1.2916

>> max(pc_srfd)

ans =

   -1.1571

>> figure(3)
>> addpath ~/Matlab/Extra
>> d = run_extract_figdata(gca);
>> figure(1);
>> plot(d(1).x,d(1).y)
>> btd = d(1).y;
>> nanmean(btd)

ans =

  -8.2797e-04

>> nanmean(abs(btd))

ans =

    0.0614

>> nanstd(btd)

ans =

    0.1082

>> max(btd)

ans =

    0.5712

>> min(btd)

ans =

   -0.5305

>> figure
>> histgram(btd,30)
Unrecognized function or variable 'histgram'.
 
>> histogram(btd,30)
>> histogram(btd,60)
>> grid
>> yy = find(abs(btd) > 0.1);
>> whos yy
  Name      Size             Bytes  Class     Attributes

  yy        1x575             4600  double              

>> yy = find(abs(btd) > 0.2);
>> whos yy
  Name      Size             Bytes  Class     Attributes

  yy        1x231             1848  double              

>> close all
>> 64*72

ans =

        4608

>> cdhd
>> clear
>> load npp_hires_ecmwf_clear_2021_desc_ocean.mat
>> whos
  Name              Size                      Bytes  Class     Attributes

  count             5x40x9x2223            32011200  double              
  gas1_mean         5x40x9x101              1454400  double              
  gas3_mean         5x40x9x101              1454400  double              
  iudef4_mean       5x40x9                    14400  double              
  lat_mean          5x40x9                    14400  double              
  lon_mean          5x40x9                    14400  double              
  mmwater_mean      5x40x9                    14400  double              
  nlevs_mean        5x40x9                    14400  double              
  plevs_mean        5x40x9x101              1454400  double              
  ptemp_mean        5x40x9x101              1454400  double              
  rclr              5x40x9x2223            32011200  double              
  rclrbias_std      5x40x9x2223            32011200  double              
  robs              5x40x9x2223            32011200  double              
  rtime_mean        5x40x9                    14400  double              
  satzen_mean       5x40x9                    14400  double              
  solzen_mean       5x40x9                    14400  double              
  spres_mean        5x40x9                    14400  double              
  stemp_mean        5x40x9                    14400  double              

>> load_fcris
>> whos f*
  Name          Size            Bytes  Class     Attributes

  fcris      1305x1             10440  double              

>> addpath /asl/matlib/h4tools
addpath /asl/matlib/cris
addpath /asl/matlib/aslutil
addpath ~/Git/ccast/motmsc/utils/
addpath ~/Git/ccast/motmsc
addpath ~/Git/ccast/motmsc/time
addpath ~/Git/rtp_prod2/util
addpath ~/Matlab/FileExchange
addpath /asl/matlab2012/cris/unapod

addpath /asl/matlib/h4tools
>> addpath /asl/matlib/cris
>> addpath /asl/matlib/aslutil
>> addpath ~/Git/ccast/motmsc/utils/
>> addpath ~/Git/ccast/motmsc
>> addpath ~/Git/ccast/motmsc/time
>> addpath ~/Git/rtp_prod2/util
>> addpath ~/Matlab/FileExchange
>> addpath /asl/matlab2012/cris/unapod
>> 
>> [n1,n2,n3,userLW,userMW,userSW, ichan] = cris_highres_chans(2);

% Do each band separately
ib1 = [1:2 (2+1):(2+(n1 + 2))];
ib2 = [(ib1(end)+1):((ib1(end)+n2) + 4)];
ib3 = [(ib2(end)+1):((ib2(end)+n3) + 4)];
ib2f = ib2 + ib1(end) + 1;
ib3f = ib3 + ib2(end) + 1;

f = cris_vchan(2, userLW, userMW, userSW);
nchan = n1+n2+n3;

% Subset to real channels
kstd = find(ichan <= nchan);
f = f(kstd);

[n1,n2,n3,userLW,userMW,userSW, ichan] = cris_highres_chans(2);
>> 
>> % Do each band separately
>> ib1 = [1:2 (2+1):(2+(n1 + 2))];
>> ib2 = [(ib1(end)+1):((ib1(end)+n2) + 4)];
>> ib3 = [(ib2(end)+1):((ib2(end)+n3) + 4)];
>> ib2f = ib2 + ib1(end) + 1;
>> ib3f = ib3 + ib2(end) + 1;
>> 
>> f = cris_vchan(2, userLW, userMW, userSW);
>> nchan = n1+n2+n3;
>> 
>> % Subset to real channels
>> kstd = find(ichan <= nchan);
>> f = f(kstd);
>> 
>> whos f
  Name      Size              Bytes  Class     Attributes

  f         1x2211            17688  double              

>> whos kstd
  Name      Size              Bytes  Class     Attributes

  kstd      1x2211            17688  double              

>> kstd(1:5)

ans =

     3     4     5     6     7

>> whos
  Name                 Size                      Bytes  Class     Attributes

  ans                  1x5                          40  double              
  count                5x40x9x2223            32011200  double              
  f                    1x2211                    17688  double              
  fcris             1305x1                       10440  double              
  gas1_mean            5x40x9x101              1454400  double              
  gas3_mean            5x40x9x101              1454400  double              
  ib1                  1x717                      5736  double              
  ib2                  1x869                      6952  double              
  ib2f                 1x869                      6952  double              
  ib3                  1x637                      5096  double              
  ib3f                 1x637                      5096  double              
  ichan                1x2223                    17784  double              
  iudef4_mean          5x40x9                    14400  double              
  kstd                 1x2211                    17688  double              
  lat_mean             5x40x9                    14400  double              
  lon_mean             5x40x9                    14400  double              
  mmwater_mean         5x40x9                    14400  double              
  n1                   1x1                           8  double              
  n2                   1x1                           8  double              
  n3                   1x1                           8  double              
  nchan                1x1                           8  double              
  nlevs_mean           5x40x9                    14400  double              
  plevs_mean           5x40x9x101              1454400  double              
  ptemp_mean           5x40x9x101              1454400  double              
  rclr                 5x40x9x2223            32011200  double              
  rclrbias_std         5x40x9x2223            32011200  double              
  robs                 5x40x9x2223            32011200  double              
  rtime_mean           5x40x9                    14400  double              
  satzen_mean          5x40x9                    14400  double              
  solzen_mean          5x40x9                    14400  double              
  spres_mean           5x40x9                    14400  double              
  stemp_mean           5x40x9                    14400  double              
  userLW               1x1                        1052  struct              
  userMW               1x1                        1052  struct              
  userSW               1x1                        1052  struct              

>> 
[nday nlat nfovs nchans] = size(robs);

for i = 1:nday
   for j = 1:nlat
      for k = 1:nfov
         btobs(i,j,k,:) = rad2bt(robs(i,j,k,kstd));
         btclr(i,j,k,:) = rad2bt(rclr(i,j,k,kstd));
      end
   end
end


>> [nday nlat nfovs nchans] = size(robs);
>> 
>> for i = 1:nday
   for j = 1:nlat
      for k = 1:nfov
         btobs(i,j,k,:) = rad2bt(robs(i,j,k,kstd));
         btclr(i,j,k,:) = rad2bt(rclr(i,j,k,kstd));
      end
   end
end
Unrecognized function or variable 'nfov'.
 
>> 
>> for i = 1:nday
   for j = 1:nlat
      for k = 1:nfovs
         btobs(i,j,k,:) = rad2bt(robs(i,j,k,kstd));
         btclr(i,j,k,:) = rad2bt(rclr(i,j,k,kstd));
      end
   end
end

for i = 1:nday
   for j = 1:nlat
      for k = 1:nfovs
         btobs(i,j,k,:) = rad2bt(robs(i,j,k,kstd));
         btclr(i,j,k,:) = rad2bt(rclr(i,j,k,kstd));
      end
   end
end
Not enough input arguments.

Error in rad2bt (line 47)
d2 = size(rad);             % rad dimension list
 
>> 
>> [nday nlat nfovs nchans] = size(robs);

for i = 1:nday
   for j = 1:nlat
      for k = 1:nfovs
         btobs(i,j,k,:) = rad2bt(f,robs(i,j,k,kstd));
         btclr(i,j,k,:) = rad2bt(f,rclr(i,j,k,kstd));
      end
   end
end

[nday nlat nfovs nchans] = size(robs);
>> 
>> for i = 1:nday
   for j = 1:nlat
      for k = 1:nfovs
         btobs(i,j,k,:) = rad2bt(f,robs(i,j,k,kstd));
         btclr(i,j,k,:) = rad2bt(f,rclr(i,j,k,kstd));
      end
   end
end
>> 
>> whos btobs
  Name       Size                      Bytes  Class     Attributes

  btobs      5x40x9x2211            31838400  double              

>> whos *time*
  Name            Size              Bytes  Class     Attributes

  rtime_mean      5x40x9            14400  double              

>> mtime = squeeze(nanmean(tai2dtime(rtime_mean),2));
>> whos mtime
  Name       Size            Bytes  Class       Attributes

  mtime      5x9               720  datetime              

>> mtime = nanmean(mtime);
>> figure
>> whos btobs
  Name       Size                      Bytes  Class     Attributes

  btobs      5x40x9x2211            31838400  double              

>> load ~/Matlab/Stats/mlat_equal_area.mat
>> k = find(abs(mlat) < 30);
>> bias = nanmean(btobs(:,k,:,:)-btclr(:,k,:,:),2);
>> whos bias
  Name      Size                   Bytes  Class     Attributes

  bias      5x1x9x2211            795960  double              

>> bias = squeeze(nanmean(btobs(:,k,:,:)-btclr(:,k,:,:),2));
>> whos bias
  Name      Size                 Bytes  Class     Attributes

  bias      5x9x2211            795960  double              

>> plot(f,squeeze(nanmean(bias(1,:,:),2)))
>> hold on;
>> for i=2:5
plot(f,squeeze(nanmean(bias(1,:,:),2)))
end
>> clf
>> plot(f,squeeze(nanmean(bias(1,:,:),2)))
>> hold on;
>> for i=2:5
plot(f,squeeze(nanmean(bias(i,:,:),2)))
end
>> mtime

mtime = 

  1x9 datetime array

Columns 1 through 4

   06-Dec-2021 10:44:59   06-Dec-2021 10:49:52   06-Dec-2021 10:54:51   06-Dec-2021 10:41:21

Columns 5 through 8

   06-Dec-2021 10:38:34   06-Dec-2021 10:43:19   06-Dec-2021 10:42:37   06-Dec-2021 10:42:04

Column 9

   06-Dec-2021 10:44:50

>> mtime'

ans = 

  9x1 datetime array

   06-Dec-2021 10:44:59
   06-Dec-2021 10:49:52
   06-Dec-2021 10:54:51
   06-Dec-2021 10:41:21
   06-Dec-2021 10:38:34
   06-Dec-2021 10:43:19
   06-Dec-2021 10:42:37
   06-Dec-2021 10:42:04
   06-Dec-2021 10:44:50

>> whos mtime
  Name       Size            Bytes  Class       Attributes

  mtime      1x9               144  datetime              

>> mtime = squeeze(nanmean(tai2dtime(rtime_mean),2));
>> whos mtime
  Name       Size            Bytes  Class       Attributes

  mtime      5x9               720  datetime              

>> mtime = nanmean(mtime,2);
>> mtime'

ans = 

  1x5 datetime array

Columns 1 through 4

   04-Dec-2021 11:56:34   05-Dec-2021 12:43:21   06-Dec-2021 08:15:23   07-Dec-2021 11:33:51

Column 5

   08-Dec-2021 09:14:26

>> mtmie
Unrecognized function or variable 'mtmie'.
 
>> mtime

mtime = 

  5x1 datetime array

   04-Dec-2021 11:56:34
   05-Dec-2021 12:43:21
   06-Dec-2021 08:15:23
   07-Dec-2021 11:33:51
   08-Dec-2021 09:14:26

>> whos
  Name                 Size                      Bytes  Class       Attributes

  ans                  1x5                          80  datetime              
  bias                 5x9x2211                 795960  double                
  btclr                5x40x9x2211            31838400  double                
  btobs                5x40x9x2211            31838400  double                
  count                5x40x9x2223            32011200  double                
  f                    1x2211                    17688  double                
  fcris             1305x1                       10440  double                
  gas1_mean            5x40x9x101              1454400  double                
  gas3_mean            5x40x9x101              1454400  double                
  i                    1x1                           8  double                
  ib1                  1x717                      5736  double                
  ib2                  1x869                      6952  double                
  ib2f                 1x869                      6952  double                
  ib3                  1x637                      5096  double                
  ib3f                 1x637                      5096  double                
  ichan                1x2223                    17784  double                
  iudef4_mean          5x40x9                    14400  double                
  j                    1x1                           8  double                
  k                    1x20                        160  double                
  kstd                 1x2211                    17688  double                
  lat_mean             5x40x9                    14400  double                
  lon_mean             5x40x9                    14400  double                
  mlat                 1x40                        160  single                
  mmwater_mean         5x40x9                    14400  double                
  mtime                5x1                          80  datetime              
  n1                   1x1                           8  double                
  n2                   1x1                           8  double                
  n3                   1x1                           8  double                
  nchan                1x1                           8  double                
  nchans               1x1                           8  double                
  nday                 1x1                           8  double                
  nfovs                1x1                           8  double                
  nlat                 1x1                           8  double                
  nlevs_mean           5x40x9                    14400  double                
  plevs_mean           5x40x9x101              1454400  double                
  ptemp_mean           5x40x9x101              1454400  double                
  rclr                 5x40x9x2223            32011200  double                
  rclrbias_std         5x40x9x2223            32011200  double                
  robs                 5x40x9x2223            32011200  double                
  rtime_mean           5x40x9                    14400  double                
  satzen_mean          5x40x9                    14400  double                
  solzen_mean          5x40x9                    14400  double                
  spres_mean           5x40x9                    14400  double                
  stemp_mean           5x40x9                    14400  double                
  userLW               1x1                        1052  struct                
  userMW               1x1                        1052  struct                
  userSW               1x1                        1052  struct                

>> c = squeeze(nanmean(count(:,k,:,:),2));
>> whos c
  Name      Size                 Bytes  Class     Attributes

  c         5x9x2223            800280  double              

>> c = squeeze(c(:,:,1));
>> whos c
  Name      Size            Bytes  Class     Attributes

  c         5x9               360  double              

>> c

c =

  128.1000  149.1500  129.4500  149.4000  167.7000  150.6000  135.8000  151.8000  130.4500
  144.5000  167.5500  147.3000  170.5000  185.9500  169.1500  155.4500  169.3500  151.9500
   74.5000   91.5000   80.1000   90.1500  101.6000   89.3500   83.1000   93.7500   80.5000
  135.4000  156.8500  134.6500  154.1500  168.2500  152.8500  140.5500  152.9000  135.4000
   80.7000   96.2500   79.7500   94.4500  107.7000   93.2500   86.9000   97.2000   83.1500

>> figure
>> plot(c,'+-')
>> plot(mtime,'+-')
>> plot(mtime,c,'+-')
>> figure(1)
>> plot(f,squeeze(nanmean(bias(2,:,:),2)))
>> clf
>> plot(f,squeeze(nanmean(bias(2,:,:),2)))
>> hold on;
>> plot(f,squeeze(nanmean(bias(4,:,:),2)))
>> plot(f,squeeze(nanmean(bias(4,:,:),2))-squeeze(nanmean(bias(2,:,:),2)))
>> grid
>> mtime

mtime = 

  5x1 datetime array

   04-Dec-2021 11:56:34
   05-Dec-2021 12:43:21
   06-Dec-2021 08:15:23
   07-Dec-2021 11:33:51
   08-Dec-2021 09:14:26

>> plot(f,squeeze(nanmean(bias(5,:,:),2))-squeeze(nanmean(bias(2,:,:),2)))
>> AVDCreateGPUAccelerator: Error loading GPU renderer

>> hl = legend('Bias: Dec 04','Bias: Dec 07','\Delta Bias: Dec. 7 - Dec. 4','\Delta Bias: Dec. 8 - Dec. 4');
>> xwn
>> ylabel('\Delta BT in K')
>> figure(2);
>> ylabel('Clear Counts')
>> grid
>> title('Color is FOV ID')
>> aslprint('cris_snpp_clear_counts')

fn =

    'cris_snpp_clear_counts'

>> figure(1);
>> aslprint('cris_snpp_bias_diffs')

fn =

    'cris_snpp_bias_diffs'

>> close all
>> clear
>> 0.15 /16

ans =

    0.0094

>> 0.07-0.025

ans =

    0.0450

>> clear
>> pwd

ans =

    '/Users/strow/Desktop'

>> cd ~/Work/Airs/L1b_v7
>> v7_codes

hab = 

  Line with properties:

              Color: [0.7000 0.7000 0.7000]
          LineStyle: 'none'
          LineWidth: 0.5000
             Marker: 'x'
         MarkerSize: 6
    MarkerFaceColor: 'none'
              XData: [1x1193 double]
              YData: [1x1193 single]
              ZData: [1x0 double]

  Use GET to show all properties


ha = 

  Line with properties:

              Color: [0.7000 0.7000 0.7000]
          LineStyle: 'none'
          LineWidth: 0.5000
             Marker: 'x'
         MarkerSize: 6
    MarkerFaceColor: 'none'
              XData: [1x246 double]
              YData: [1x246 single]
              ZData: [1x0 double]

  Use GET to show all properties


hb = 

  Line with properties:

              Color: [0.7000 0.7000 0.7000]
          LineStyle: 'none'
          LineWidth: 0.5000
             Marker: 'x'
         MarkerSize: 6
    MarkerFaceColor: 'none'
              XData: [1x249 double]
              YData: [1x249 single]
              ZData: [1x0 double]

  Use GET to show all properties


hl = 

  Legend (M12, M11, M10, M9, M8, M7, M6, M5, M4D, M4C, M3, M4B, M4A, M2B…) with properties:

         String: {1x18 cell}
       Location: 'northeast'
    Orientation: 'vertical'
       FontSize: 14.4000
       Position: [0.7625 0.1060 0.1286 0.8012]
          Units: 'normalized'

  Use GET to show all properties


hab = 

  Line with properties:

              Color: [0.7000 0.7000 0.7000]
          LineStyle: 'none'
          LineWidth: 0.5000
             Marker: 'x'
         MarkerSize: 6
    MarkerFaceColor: 'none'
              XData: [1x1193 double]
              YData: [1x1193 single]
              ZData: [1x0 double]

  Use GET to show all properties


ha = 

  Line with properties:

              Color: [0.7000 0.7000 0.7000]
          LineStyle: 'none'
          LineWidth: 0.5000
             Marker: 'x'
         MarkerSize: 6
    MarkerFaceColor: 'none'
              XData: [1x246 double]
              YData: [1x246 single]
              ZData: [1x0 double]

  Use GET to show all properties


hb = 

  Line with properties:

              Color: [0.7000 0.7000 0.7000]
          LineStyle: 'none'
          LineWidth: 0.5000
             Marker: 'x'
         MarkerSize: 6
    MarkerFaceColor: 'none'
              XData: [1x249 double]
              YData: [1x249 single]
              ZData: [1x0 double]

  Use GET to show all properties


hl = 

  Legend (M12, M11, M10, M9, M8, M7, M6, M5, M4D, M4C, M3, M4B, M4A, M2B…) with properties:

         String: {1x18 cell}
       Location: 'none'
    Orientation: 'vertical'
       FontSize: 14.4000
       Position: [0.8277 0.1231 0.1625 0.8012]
          Units: 'normalized'

  Use GET to show all properties


hab = 

  Line with properties:

              Color: [0.7000 0.7000 0.7000]
          LineStyle: 'none'
          LineWidth: 0.5000
             Marker: 'x'
         MarkerSize: 6
    MarkerFaceColor: 'none'
              XData: [1x1193 double]
              YData: [1x1193 single]
              ZData: [1x0 double]

  Use GET to show all properties


ha = 

  Line with properties:

              Color: [0.7000 0.7000 0.7000]
          LineStyle: 'none'
          LineWidth: 0.5000
             Marker: 'x'
         MarkerSize: 6
    MarkerFaceColor: 'none'
              XData: [1x246 double]
              YData: [1x246 single]
              ZData: [1x0 double]

  Use GET to show all properties


hb = 

  Line with properties:

              Color: [0.7000 0.7000 0.7000]
          LineStyle: 'none'
          LineWidth: 0.5000
             Marker: 'x'
         MarkerSize: 6
    MarkerFaceColor: 'none'
              XData: [1x249 double]
              YData: [1x249 single]
              ZData: [1x0 double]

  Use GET to show all properties


hl = 

  Legend (M12, M11, M10, M9, M8, M7, M6, M5, M4D, M4C, M3, M4B, M4A, M2B…) with properties:

         String: {1x18 cell}
       Location: 'none'
    Orientation: 'vertical'
       FontSize: 14.4000
       Position: [0.8277 0.1231 0.1625 0.8012]
          Units: 'normalized'

  Use GET to show all properties

Error using load
Unable to read file 'asymmetry_absolute_iasi_airs1b_airs1c_with_v7diffs.fig'. No such file or
directory.

Error in matlab.graphics.internal.figfile.FigFile/read (line 31)
hgDataVars = load(filename, '-mat', '-regexp', '^hg[M]');

Error in matlab.graphics.internal.figfile.FigFile

Error in hgload (line 56)
FF = matlab.graphics.internal.figfile.FigFile(filename);

Error in v7_codes (line 266)
hgload('asymmetry_absolute_iasi_airs1b_airs1c_with_v7diffs.fig');
 
>> hgload('Figs/asymmetry_absolute_iasi_airs1b_airs1c_with_v7diffs.fig');
%hgload('Figs/asymmetry_absolute_iasi_airs1b_airs1c.fig');


% asy_dbt(ch1c) = t.dT(21,ch1b,1,1)-t.dT(21,ch1b,90,1)

for i=1:length(chan_ab)
   btu = asy_dbt(chan_ab(i));
   y2(i) = nanmean(interp1(t.T_sc1,t.dT(:,ch_ab_l1b(i),1:3,1),real(btu)));
%   btu = rad2bt(fairs(chan_ab(i)),squeeze(b_ang(chan_ab(i),30,1)));
   y1(i) = nanmean(interp1(t.T_sc1,t.dT2(:,ch_ab_l1b(i),88:90,1),real(btu)));
   yab(i) = y2(i)-y1(i);
end
clear y1 y2

for i=1:length(chan_a)
   btu = asy_dbt(chan_a(i));
   y2(i) = nanmean(interp1(t.T_sc1,t.dT(:,ch_a_l1b(i),1:3,1),real(btu)));
%   btu = rad2bt(fairs(chan_ab(i)),squeeze(b_ang(chan_ab(i),30,1)));
   y1(i) = nanmean(interp1(t.T_sc1,t.dT2(:,ch_a_l1b(i),88:90,1),real(btu)));
   ya(i) = y2(i)-y1(i);
end
clear y1 y2

for i=1:length(chan_b)
   btu = asy_dbt(chan_b(i));
   y2(i) = nanmean(interp1(t.T_sc1,t.dT(:,ch_b_l1b(i),1:3,1),real(btu)));
%   btu = rad2bt(fairs(chan_ab(i)),squeeze(b_ang(chan_ab(i),30,1)));
   y1(i) = nanmean(interp1(t.T_sc1,t.dT2(:,ch_b_l1b(i),88:90,1),real(btu)));
   yb(i) = y2(i)-y1(i);
end
clear y1 y2

hold on;
co = [0.8 0.87 0.97];
co = [162  197 240]/256;
hab=plot(fairs(chan_ab),yab,'.','color',co)
ha=plot(fairs(chan_a),ya,'.','color',co)
hb=plot(fairs(chan_b),yb,'.','color',co)

hl = legend('IASI','AIRS L1b','AIRS L1c','V7 Diffs')

% modn = calprop.modnames;
% modn{18} = 'V7 Diffs';

% hl = legend(modn)
% p = get(gca,'position');
% set(gca,'position',p + [0 0 -0.07 0.0])
% p2 =  [0.8447    0.1381    0.1286    0.7571];
% set(hl,'position',p2 + [0 +0.007 0 0]);
%ylabel('Asymmetric Trend in 12 Years (K)');

%------- PLOT 5 done

%--------------------------------------AUGUST----------------------------------------
%-----------------------------BT bias diff with angle --------------------------------

%----------------------- Trends in Mean DCCs -----------------------
% Technically should use b_ang to get bt_dcc terms, but I am going to take
% the meean over xtrack, so it hardly matters.  Plus BT hardly changes with xtrack for dccs.
% Now do absolute
dccstat.dbt = (dccstat.dbt1 + dccstat.dbt2)/2;

for i=1:length(chan_ab)
   for j = 1:90
   ytemp(j) = interp1(t.T_sc1,t.dT2(:,ch_ab_l1b(i),j,1),real(bt_dcc(chan_ab(i))));
   end
   yab_abs(i) = nanmean(ytemp,2);
end
clear ytemp;

for i=1:length(chan_a)
   for j = 1:90
   ytemp(j) = interp1(t.T_sc1,t.dT2(:,ch_a_l1b(i),j,2),real(bt_dcc(chan_a(i))));
   end
   ya_abs(i) = nanmean(ytemp,2);
end
clear ytemp;

for i=1:length(chan_b)
   for j = 1:90
   ytemp(j) = interp1(t.T_sc1,t.dT2(:,ch_b_l1b(i),j,3),real(bt_dcc(chan_b(i))));
   end
   yb_abs(i) = nanmean(ytemp,2);
end
clear ytemp;

figure
for i=1:17
   m = calprop.modnum == i;
   m = find(m ==1);
   ml1c = chan_l1c_from_chan_l1b(m);
%   [c i1 i2] = intersect(ch,ml1c);
   if i <= 7
   plot(fairs(ml1c),12*dccstat.dbt(ml1c),'+')
   end
   if (i > 7 & i <= 14)
   plot(fairs(ml1c),12*dccstat.dbt(ml1c),'o')
   end
   if i > 14
   plot(fairs(ml1c),12*dccstat.dbt(ml1c),'s')
   end
   if i == 1; hold on; end;
end
grid;
xlim([630 2700]);
xwn;

plot(fairs(chan_ab),-yab_abs,'x','color',[0.7 0.7 0.7])
plot(fairs(chan_a),-ya_abs,'x','color',[0.7 0.7 0.7])
plot(fairs(chan_b),-yb_abs,'x','color',[0.7 0.7 0.7])

modn = calprop.modnames;
modn{18} = 'Calc';
hl = legend(modn)
p = get(gca,'position');
set(gca,'position',p + [0 0 -0.07 0.0])
p2 =  [0.8447    0.1381    0.1286    0.7571];
set(hl,'position',p2 + [0 +0.007 0 0]);
ylabel('12 Year Trend (K)');

%------------------------------------ Now do one channel vs xtrack
figure
for i=1:90
   ytemp(i) = interp1(t.T_sc1,t.dT2(:,1193,i,1),real(bt_dcc(1269)));
end

plot(xscanang,12*dbt_ang(1269,:),'o-','linewidth',2,'markersize',12)
hold on;
c = -44.5:1:44.5;
plot(c,-ytemp,'-','linewidth',2,'markersize',12)
grid
plot(xscanang,12*dbt_ang_fit(1269,:),'s-');
plot(xscanang,12*dbt_ang_fit(1269,:)-12*dbt_ang(1269,:),'+-');
hl = legend('Obs','-Calc','Fit','Fit Residual')
ylabel('12 Year Trend in K')


%----------------------- Trends in clear asymmetry -----------------------
cg1 = load('clear_secant_all_angs');

x = [ones(30,1) secd(xsatzen)' xscanang'];

for ch=1:2645;
   [b,bint,r,rint,stats] = regress(cg1.dbt_ang(ch,:)',x);
   allbc(ch,:) = b;
   allbintc(ch,:,:) = bint;
end
% Compute fit
cg1.dbt_ang_fit = allbc(:,1) + allbc(:,2).*x(:,2)' + allbc(:,3).*x(:,3)';
%----------------------- Trends in clear asymmetry: Tom's theory -----------------------
% Get mean clear radiances vs scan angle
load('r_mean_clear_xtrack.mat');
btobs_clr = rad2bt(fairs,rmean');

for i=1:length(chan_ab)
   for j = 1:90
   ytemp(j) = interp1(t.T_sc1,t.dT2(:,ch_ab_l1b(i),j,1),real(btobs_clr(chan_ab(i),j)));
   end
   yab_abs(i) = nanmean(ytemp);
end
clear ytemp;

for i=1:length(chan_ab)
   y2(i) = interp1(t.T_sc1,t.dT2(:,ch_ab_l1b(i),2,1),real(btobs_clr(chan_ab(i),2)));
   y1(i) = interp1(t.T_sc1,t.dT2(:,ch_ab_l1b(i),89,1),real(btobs_clr(chan_ab(i),89)));
   yab(i) = y2(i)-y1(i);
end
clear y1 y2

for i=1:length(chan_a)
   y2(i) = interp1(t.T_sc1,t.dT2(:,ch_a_l1b(i),2,2),real(btobs_clr(chan_a(i),2)));
   y1(i) = interp1(t.T_sc1,t.dT2(:,ch_a_l1b(i),89,2),real(btobs_clr(chan_a(i),89)));
   ya(i) = y2(i)-y1(i);
end
clear y1 y2

for i=1:length(chan_b)
   y2(i) = interp1(t.T_sc1,t.dT2(:,ch_b_l1b(i),2,3),real(btobs_clr(chan_b(i),1)));
   y1(i) = interp1(t.T_sc1,t.dT2(:,ch_b_l1b(i),89,3),real(btobs_clr(chan_b(i),89)));
   yb(i) = y2(i)-y1(i);
end
clear y1 y2


figure
for i=1:17
   m = calprop.modnum == i;
   m = find(m ==1);
   ml1c = chan_l1c_from_chan_l1b(m);
%   [c i1 i2] = intersect(ch,ml1c);
   if i <= 7
      yp = cg1.dbt_ang_fit(ml1c,1) - cg1.dbt_ang_fit(ml1c,30);
      plot(fairs(ml1c),12*yp,'+')
   end
   if (i > 7 & i <= 14)
      yp = cg1.dbt_ang_fit(ml1c,1) - cg1.dbt_ang_fit(ml1c,30);
      plot(fairs(ml1c),12*yp,'o')
   end
   if i > 14
      yp = cg1.dbt_ang_fit(ml1c,1) - cg1.dbt_ang_fit(ml1c,30);
      plot(fairs(ml1c),12*yp,'s')
   end
   if i == 1; hold on; end;
end
grid;
xlim([630 2700]);
xwn;

plot(fairs(chan_ab),-yab,'x','color',[0.7 0.7 0.7])
plot(fairs(chan_a),-ya,'x','color',[0.7 0.7 0.7])
plot(fairs(chan_b),-yb,'x','color',[0.7 0.7 0.7])

hl = legend(modn)
p = get(gca,'position');
set(gca,'position',p + [0 0 -0.07 0.0])
p2 =  [0.8447    0.1381    0.1286    0.7571];
set(hl,'position',p2 + [0 +0.007 0 0]);
ylabel('Asymmetric Trend in 12 Years (K)');

%----------------------- Absolute Trends in clear: Tom's theory -----------------------

for i=1:length(chan_ab)
   for j = 1:90
   ytemp(j) = interp1(t.T_sc1,t.dT2(:,ch_ab_l1b(i),j,1),real(btobs_clr(chan_ab(i),j)));
   end
   yab_abs(i) = nanmean(ytemp);
end
clear ytemp;

for i=1:length(chan_a)
   for j = 1:90
   ytemp(j) = interp1(t.T_sc1,t.dT2(:,ch_a_l1b(i),j,2),real(btobs_clr(chan_a(i),j)));
   end
   ya_abs(i) = nanmean(ytemp);
end
clear ytemp;

for i=1:length(chan_b)
   for j = 1:90
   ytemp(j) = interp1(t.T_sc1,t.dT2(:,ch_b_l1b(i),j,3),real(btobs_clr(chan_b(i),j)));
   end
   yb_abs(i) = nanmean(ytemp);
end
clear ytemp;

figure
for i=1:17
   m = calprop.modnum == i;
   m = find(m ==1);
   ml1c = chan_l1c_from_chan_l1b(m);
%   [c i1 i2] = intersect(ch,ml1c);
   if i <= 7
      plot(fairs(ml1c),12*nanmean(cg1.dbt_ang(ml1c,:),2),'+')
   end
   if (i > 7 & i <= 14)
      plot(fairs(ml1c),12*nanmean(cg1.dbt_ang(ml1c,:),2),'o')
   end
   if i > 14
      plot(fairs(ml1c),12*nanmean(cg1.dbt_ang(ml1c,:),2),'s')
   end
   if i ==1; hold on; end
end
grid;
xlim([630 2700]);
xwn;

plot(fairs(chan_ab),-yab_abs,'x','color',[0.7 0.7 0.7])
plot(fairs(chan_a),-ya_abs,'x','color',[0.7 0.7 0.7])
plot(fairs(chan_b),-yb_abs,'x','color',[0.7 0.7 0.7])

hl = legend(modn)
p = get(gca,'position');
set(gca,'position',p + [0 0 -0.07 0.0])
p2 =  [0.8447    0.1381    0.1286    0.7571];
set(hl,'position',p2 + [0 +0.007 0 0]);
ylabel('12 Year Bias Trend (K)');


%----------------------- Trends in clear absolute with minor gas removals:    -----------------------

% Don't really need this, nanmean(cg2.dbt_ang,2) is same as cgabs.dbt below. 
cgabs = load('clear_secant_2sides','b1','b1err','b2','b2err','dbt1','dbt2','dbt_err1','dbt_err2');
cgabs.dbt = (cgabs.dbt1 + cgabs.dbt2)/2;

jac = load('~/Work/Airs/Jacfiles/sarta_l1c_clear_jacs.mat');
load ~/Matlab/Stats/mlat_equal_area.mat
k = find(abs(mlat) < 30);
jacall = squeeze(nanmean(jac.M_TS_jac_all(k,:,:)));

dbtminor = jacall(:,1)+0.793*jacall(:,2)+jacall(:,3);
% up to here

figure
for i=1:17
   m = calprop.modnum == i;
   m = find(m ==1);
   ml1c = chan_l1c_from_chan_l1b(m);
%   [c i1 i2] = intersect(ch,ml1c);
   if i <= 7
      plot(fairs(ml1c),12*(nanmean(cg1.dbt_ang(ml1c,:),2)-dbtminor(ml1c)),'+')
   end
   if (i > 7 & i <= 14)
      plot(fairs(ml1c),12*(nanmean(cg1.dbt_ang(ml1c,:),2)-dbtminor(ml1c)),'o')
   end
   if i > 14
      plot(fairs(ml1c),12*(nanmean(cg1.dbt_ang(ml1c,:),2)-dbtminor(ml1c)),'s')
   end
   if i ==1; hold on; end
end
grid;
xlim([630 2700]);
xwn;

plot(fairs(chan_ab),-yab_abs,'x','color',[0.7 0.7 0.7])
plot(fairs(chan_a),-ya_abs,'x','color',[0.7 0.7 0.7])
plot(fairs(chan_b),-yb_abs,'x','color',[0.7 0.7 0.7])

hl = legend(modn)
p = get(gca,'position');
set(gca,'position',p + [0 0 -0.07 0.0])
p2 =  [0.8447    0.1381    0.1286    0.7571];
set(hl,'position',p2 + [0 +0.007 0 0]);
ylabel('12 Year Bias Trend (K)');

c = -44.5:1:44.5;
for i=1:90
   ytemp(i) = interp1(t.T_sc1,t.dT2(:,1193,i,1),real(btobs_clr(1269)));
end

%----------------------- DCC left right  ----------------------------------------
anom_bt_left = squeeze(nanmean(anom_bt(:,1:15,:),2));
anom_bt_right = squeeze(nanmean(anom_bt(:,16:30,:),2));

ylr_1520 = smooth(anom_bt_right(:,1520)-anom_bt_left(:,1520), 16*20,'loess');
ylr_1269 = smooth(anom_bt_right(:,1269)-anom_bt_left(:,1269), 16*20,'loess');
ylr_1268 = smooth(anom_bt_right(:,1268)-anom_bt_left(:,1268), 16*20,'loess');

% get this for Tom's data...
% Now do the same for Tom's data
for j=1:90
   ytemp_dcc(j) = interp1(t.T_sc1,t.dT2(:,1193,j,1),real(bt_dcc(1268)));
   ytemp_dccx(j) = interp1(t.T_sc1,t.dT2(:,1291,j,1),real(bt_dcc(1520)));
end
figure;
dtime = datenum(mtime);
tom_dcc = (ytemp_dcc/12).*(dtime-dtime(1))/365;
plot(mtime,ylr_1520 - ylr_1269,'linewidth',2);
hold on;
plot(mtime,nanmean(tom_dcc(:,46:90)-tom_dcc(:,1:45),2),'linewidth',2)
hl = legend('Obs','L1b\_v7')
ylabel('(Right - Left) \Delta BT in K')
grid;
%---------- Switch to clear -----------------

% Now do the same for Tom's data
for j=1:90
   ytemp_c(j) = interp1(t.T_sc1,t.dT2(:,1193,j,1),real(btobs_clr(1268,j)));
end

% Clear bias left right   NOT ENOUGH SENSITIVITY, use stability fit residuals
anom_bt_left_c = squeeze(nanmean(cg1.anom_bt(:,1:15,:),2));
anom_bt_right_c = squeeze(nanmean(cg1.anom_bt(:,16:30,:),2));

ylr_1520 = smooth(anom_bt_right_c(:,1520)-anom_bt_left_c(:,1520), 16*20,'loess');
ylr_1269 = smooth(anom_bt_right_c(:,1269)-anom_bt_left_c(:,1269), 16*20,'loess');
ylr_1268 = smooth(anom_bt_right_c(:,1268)-anom_bt_left_c(:,1268), 16*20,'loess');

ylr_1520_abs = smooth((anom_bt_right_c(:,1520) + anom_bt_left_c(:,1520))/2, 16*20,'loess');
ylr_1269_abs = smooth((anom_bt_right_c(:,1269)+anom_bt_left_c(:,1269))/2, 16*20,'loess');
ylr_1268_abs = smooth((anom_bt_right_c(:,1268)+anom_bt_left_c(:,1268))/2, 16*20,'loess');


cg_mtime = load('mtime_for_bias_clear.mat');
cg_mtime = cg_mtime.mtime;
cg_dtime = datenum(cg_mtime);
figure
tom = (ytemp_c/12).*(cg_dtime-cg_dtime(1))/365;
plot(cg_mtime,-ylr_1520 + ylr_1268,'linewidth',2)
hold on;
plot(cg_mtime,nanmean(-tom(:,46:90)+tom(:,1:45),2),'linewidth',2)
grid
hl = legend('Clear Obs','L1b\_V7')
ylabel('(Right - Left) \Delta B(T) in K');

figure
plot(cg_mtime,ylr_1268,'linewidth',2)
hold on;
plot(cg_mtime,ylr_1520,'linewidth',2)
grid
ylabel('BT Bias Anomaly in K')
hl = legend('1100 cm-1','1231 cm-1')


% 

hgload('Figs/asymmetry_absolute_iasi_airs1b_airs1c_with_v7diffs.fig');
>> %hgload('Figs/asymmetry_absolute_iasi_airs1b_airs1c.fig');
>> 
>> 
>> % asy_dbt(ch1c) = t.dT(21,ch1b,1,1)-t.dT(21,ch1b,90,1)
>> 
>> for i=1:length(chan_ab)
   btu = asy_dbt(chan_ab(i));
   y2(i) = nanmean(interp1(t.T_sc1,t.dT(:,ch_ab_l1b(i),1:3,1),real(btu)));
%   btu = rad2bt(fairs(chan_ab(i)),squeeze(b_ang(chan_ab(i),30,1)));
   y1(i) = nanmean(interp1(t.T_sc1,t.dT2(:,ch_ab_l1b(i),88:90,1),real(btu)));
   yab(i) = y2(i)-y1(i);
end
>> clear y1 y2
>> 
>> for i=1:length(chan_a)
   btu = asy_dbt(chan_a(i));
   y2(i) = nanmean(interp1(t.T_sc1,t.dT(:,ch_a_l1b(i),1:3,1),real(btu)));
%   btu = rad2bt(fairs(chan_ab(i)),squeeze(b_ang(chan_ab(i),30,1)));
   y1(i) = nanmean(interp1(t.T_sc1,t.dT2(:,ch_a_l1b(i),88:90,1),real(btu)));
   ya(i) = y2(i)-y1(i);
end
>> clear y1 y2
>> 
>> for i=1:length(chan_b)
   btu = asy_dbt(chan_b(i));
   y2(i) = nanmean(interp1(t.T_sc1,t.dT(:,ch_b_l1b(i),1:3,1),real(btu)));
%   btu = rad2bt(fairs(chan_ab(i)),squeeze(b_ang(chan_ab(i),30,1)));
   y1(i) = nanmean(interp1(t.T_sc1,t.dT2(:,ch_b_l1b(i),88:90,1),real(btu)));
   yb(i) = y2(i)-y1(i);
end
>> clear y1 y2
>> 
>> hold on;
>> co = [0.8 0.87 0.97];
>> co = [162  197 240]/256;
>> hab=plot(fairs(chan_ab),yab,'.','color',co)

hab = 

  Line with properties:

              Color: [0.6328 0.7695 0.9375]
          LineStyle: 'none'
          LineWidth: 0.5000
             Marker: '.'
         MarkerSize: 6
    MarkerFaceColor: 'none'
              XData: [1x1193 double]
              YData: [1x1193 single]
              ZData: [1x0 double]

  Use GET to show all properties

>> ha=plot(fairs(chan_a),ya,'.','color',co)

ha = 

  Line with properties:

              Color: [0.6328 0.7695 0.9375]
          LineStyle: 'none'
          LineWidth: 0.5000
             Marker: '.'
         MarkerSize: 6
    MarkerFaceColor: 'none'
              XData: [1x246 double]
              YData: [1x246 single]
              ZData: [1x0 double]

  Use GET to show all properties

>> hb=plot(fairs(chan_b),yb,'.','color',co)

hb = 

  Line with properties:

              Color: [0.6328 0.7695 0.9375]
          LineStyle: 'none'
          LineWidth: 0.5000
             Marker: '.'
         MarkerSize: 6
    MarkerFaceColor: 'none'
              XData: [1x249 double]
              YData: [1x249 single]
              ZData: [1x0 double]

  Use GET to show all properties

>> 
>> hl = legend('IASI','AIRS L1b','AIRS L1c','V7 Diffs')

hl = 

  Legend (IASI, AIRS L1b, AIRS L1c, V7 Diffs) with properties:

         String: {'IASI'  'AIRS L1b'  'AIRS L1c'  'V7 Diffs'}
       Location: 'none'
    Orientation: 'vertical'
       FontSize: 14.4000
       Position: [0.5366 0.3075 0.1472 0.1010]
          Units: 'normalized'

  Use GET to show all properties

>> 
>> % modn = calprop.modnames;
>> % modn{18} = 'V7 Diffs';
>> 
>> % hl = legend(modn)
>> % p = get(gca,'position');
>> % set(gca,'position',p + [0 0 -0.07 0.0])
>> % p2 =  [0.8447    0.1381    0.1286    0.7571];
>> % set(hl,'position',p2 + [0 +0.007 0 0]);
>> %ylabel('Asymmetric Trend in 12 Years (K)');
>> 
>> %------- PLOT 5 done
>> 
>> %--------------------------------------AUGUST----------------------------------------
>> %-----------------------------BT bias diff with angle --------------------------------
>> 
>> %----------------------- Trends in Mean DCCs -----------------------
>> % Technically should use b_ang to get bt_dcc terms, but I am going to take
>> % the meean over xtrack, so it hardly matters.  Plus BT hardly changes with xtrack for dccs.
>> % Now do absolute
>> dccstat.dbt = (dccstat.dbt1 + dccstat.dbt2)/2;
>> 
>> for i=1:length(chan_ab)
   for j = 1:90
   ytemp(j) = interp1(t.T_sc1,t.dT2(:,ch_ab_l1b(i),j,1),real(bt_dcc(chan_ab(i))));
   end
   yab_abs(i) = nanmean(ytemp,2);
end
>> clear ytemp;
>> 
>> for i=1:length(chan_a)
   for j = 1:90
   ytemp(j) = interp1(t.T_sc1,t.dT2(:,ch_a_l1b(i),j,2),real(bt_dcc(chan_a(i))));
   end
   ya_abs(i) = nanmean(ytemp,2);
end
>> clear ytemp;
>> 
>> for i=1:length(chan_b)
   for j = 1:90
   ytemp(j) = interp1(t.T_sc1,t.dT2(:,ch_b_l1b(i),j,3),real(bt_dcc(chan_b(i))));
   end
   yb_abs(i) = nanmean(ytemp,2);
end
c>> lear ytemp;
>> 
>> figure
>> for i=1:17
   m = calprop.modnum == i;
   m = find(m ==1);
   ml1c = chan_l1c_from_chan_l1b(m);
%   [c i1 i2] = intersect(ch,ml1c);
   if i <= 7
   plot(fairs(ml1c),12*dccstat.dbt(ml1c),'+')
   end
   if (i > 7 & i <= 14)
   plot(fairs(ml1c),12*dccstat.dbt(ml1c),'o')
   end
   if i > 14
   plot(fairs(ml1c),12*dccstat.dbt(ml1c),'s')
   end
   if i == 1; hold on; end;
end
>> grid;
>> xlim([630 2700]);
>> xwn;
>> 
>> plot(fairs(chan_ab),-yab_abs,'x','color',[0.7 0.7 0.7])
>> plot(fairs(chan_a),-ya_abs,'x','color',[0.7 0.7 0.7])
>> plot(fairs(chan_b),-yb_abs,'x','color',[0.7 0.7 0.7])
>> 
>> modn = calprop.modnames;
>> modn{18} = 'Calc';
>> hl = legend(modn)

hl = 

  Legend (M12, M11, M10, M9, M8, M7, M6, M5, M4D, M4C, M3, M4B, M4A, M2B…) with properties:

         String: {1x18 cell}
       Location: 'northeast'
    Orientation: 'vertical'
       FontSize: 14.4000
       Position: [0.7625 0.1060 0.1286 0.8012]
          Units: 'normalized'

  Use GET to show all properties

>> p = get(gca,'position');
>> set(gca,'position',p + [0 0 -0.07 0.0])
>> p2 =  [0.8447    0.1381    0.1286    0.7571];
>> set(hl,'position',p2 + [0 +0.007 0 0]);
>> ylabel('12 Year Trend (K)');
>> 
>> %------------------------------------ Now do one channel vs xtrack
>> figure
>> for i=1:90
   ytemp(i) = interp1(t.T_sc1,t.dT2(:,1193,i,1),real(bt_dcc(1269)));
end
>> 
>> plot(xscanang,12*dbt_ang(1269,:),'o-','linewidth',2,'markersize',12)
>> hold on;
>> c = -44.5:1:44.5;
>> plot(c,-ytemp,'-','linewidth',2,'markersize',12)
>> grid
>> plot(xscanang,12*dbt_ang_fit(1269,:),'s-');
>> plot(xscanang,12*dbt_ang_fit(1269,:)-12*dbt_ang(1269,:),'+-');
>> hl = legend('Obs','-Calc','Fit','Fit Residual')

hl = 

  Legend (Obs, -Calc, Fit, Fit Residual) with properties:

         String: {'Obs'  '-Calc'  'Fit'  'Fit Residual'}
       Location: 'northeast'
    Orientation: 'vertical'
       FontSize: 14.4000
       Position: [0.6821 0.7226 0.2089 0.1845]
          Units: 'normalized'

  Use GET to show all properties

>> ylabel('12 Year Trend in K')
>> 
>> 
>> %----------------------- Trends in clear asymmetry -----------------------
>> cg1 = load('clear_secant_all_angs');

>> x = [ones(30,1) secd(xsatzen)' xscanang'];
>> 
>> for ch=1:2645;
   [b,bint,r,rint,stats] = regress(cg1.dbt_ang(ch,:)',x);
   allbc(ch,:) = b;
   allbintc(ch,:,:) = bint;
end
>> % Compute fit
>> cg1.dbt_ang_fit = allbc(:,1) + allbc(:,2).*x(:,2)' + allbc(:,3).*x(:,3)';
>> %----------------------- Trends in clear asymmetry: Tom's theory -----------------------
>> % Get mean clear radiances vs scan angle
>> load('r_mean_clear_xtrack.mat');
>> btobs_clr = rad2bt(fairs,rmean');
>> 
>> for i=1:length(chan_ab)
   for j = 1:90
   ytemp(j) = interp1(t.T_sc1,t.dT2(:,ch_ab_l1b(i),j,1),real(btobs_clr(chan_ab(i),j)));
   end
   yab_abs(i) = nanmean(ytemp);
end
>> clear ytemp;
>> 
>> for i=1:length(chan_ab)
   y2(i) = interp1(t.T_sc1,t.dT2(:,ch_ab_l1b(i),2,1),real(btobs_clr(chan_ab(i),2)));
   y1(i) = interp1(t.T_sc1,t.dT2(:,ch_ab_l1b(i),89,1),real(btobs_clr(chan_ab(i),89)));
   yab(i) = y2(i)-y1(i);
end
>> clear y1 y2
>> 
>> for i=1:length(chan_a)
   y2(i) = interp1(t.T_sc1,t.dT2(:,ch_a_l1b(i),2,2),real(btobs_clr(chan_a(i),2)));
   y1(i) = interp1(t.T_sc1,t.dT2(:,ch_a_l1b(i),89,2),real(btobs_clr(chan_a(i),89)));
   ya(i) = y2(i)-y1(i);
end
>> clear y1 y2
>> 
>> for i=1:length(chan_b)
   y2(i) = interp1(t.T_sc1,t.dT2(:,ch_b_l1b(i),2,3),real(btobs_clr(chan_b(i),1)));
   y1(i) = interp1(t.T_sc1,t.dT2(:,ch_b_l1b(i),89,3),real(btobs_clr(chan_b(i),89)));
   yb(i) = y2(i)-y1(i);
end
>> clear y1 y2
>> 
>> 
>> figure
>> for i=1:17
   m = calprop.modnum == i;
   m = find(m ==1);
   ml1c = chan_l1c_from_chan_l1b(m);
%   [c i1 i2] = intersect(ch,ml1c);
   if i <= 7
      yp = cg1.dbt_ang_fit(ml1c,1) - cg1.dbt_ang_fit(ml1c,30);
      plot(fairs(ml1c),12*yp,'+')
   end
   if (i > 7 & i <= 14)
      yp = cg1.dbt_ang_fit(ml1c,1) - cg1.dbt_ang_fit(ml1c,30);
      plot(fairs(ml1c),12*yp,'o')
   end
   if i > 14
      yp = cg1.dbt_ang_fit(ml1c,1) - cg1.dbt_ang_fit(ml1c,30);
      plot(fairs(ml1c),12*yp,'s')
   end
   if i == 1; hold on; end;
end
>> grid;
>> xlim([630 2700]);
>> xwn;
>> 
>> plot(fairs(chan_ab),-yab,'x','color',[0.7 0.7 0.7])
>> plot(fairs(chan_a),-ya,'x','color',[0.7 0.7 0.7])
>> plot(fairs(chan_b),-yb,'x','color',[0.7 0.7 0.7])
>> 
>> hl = legend(modn)

hl = 

  Legend (M12, M11, M10, M9, M8, M7, M6, M5, M4D, M4C, M3, M4B, M4A, M2B…) with properties:

         String: {1x18 cell}
       Location: 'northeast'
    Orientation: 'vertical'
       FontSize: 14.4000
       Position: [0.7625 0.1060 0.1286 0.8012]
          Units: 'normalized'

  Use GET to show all properties

>> p = get(gca,'position');
>> set(gca,'position',p + [0 0 -0.07 0.0])
>> p2 =  [0.8447    0.1381    0.1286    0.7571];
>> set(hl,'position',p2 + [0 +0.007 0 0]);
>> ylabel('Asymmetric Trend in 12 Years (K)');
>> 
>> %----------------------- Absolute Trends in clear: Tom's theory -----------------------
>> 
>> for i=1:length(chan_ab)
   for j = 1:90
   ytemp(j) = interp1(t.T_sc1,t.dT2(:,ch_ab_l1b(i),j,1),real(btobs_clr(chan_ab(i),j)));
   end
   yab_abs(i) = nanmean(ytemp);
end
>> clear ytemp;
>> 
>> for i=1:length(chan_a)
   for j = 1:90
   ytemp(j) = interp1(t.T_sc1,t.dT2(:,ch_a_l1b(i),j,2),real(btobs_clr(chan_a(i),j)));
   end
   ya_abs(i) = nanmean(ytemp);
end
>> clear ytemp;
>> 
>> for i=1:length(chan_b)
   for j = 1:90
   ytemp(j) = interp1(t.T_sc1,t.dT2(:,ch_b_l1b(i),j,3),real(btobs_clr(chan_b(i),j)));
   end
   yb_abs(i) = nanmean(ytemp);
end
c>> lear ytemp;
>> 
>> figure
>> for i=1:17
   m = calprop.modnum == i;
   m = find(m ==1);
   ml1c = chan_l1c_from_chan_l1b(m);
%   [c i1 i2] = intersect(ch,ml1c);
   if i <= 7
      plot(fairs(ml1c),12*nanmean(cg1.dbt_ang(ml1c,:),2),'+')
   end
   if (i > 7 & i <= 14)
      plot(fairs(ml1c),12*nanmean(cg1.dbt_ang(ml1c,:),2),'o')
   end
   if i > 14
      plot(fairs(ml1c),12*nanmean(cg1.dbt_ang(ml1c,:),2),'s')
   end
   if i ==1; hold on; end
end
>> grid;
>> xlim([630 2700]);
>> xwn;
>> 
>> plot(fairs(chan_ab),-yab_abs,'x','color',[0.7 0.7 0.7])
>> plot(fairs(chan_a),-ya_abs,'x','color',[0.7 0.7 0.7])
>> plot(fairs(chan_b),-yb_abs,'x','color',[0.7 0.7 0.7])
>> 
>> hl = legend(modn)

hl = 

  Legend (M12, M11, M10, M9, M8, M7, M6, M5, M4D, M4C, M3, M4B, M4A, M2B…) with properties:

         String: {1x18 cell}
       Location: 'northeast'
    Orientation: 'vertical'
       FontSize: 14.4000
       Position: [0.7625 0.1060 0.1286 0.8012]
          Units: 'normalized'

  Use GET to show all properties

>> p = get(gca,'position');
>> set(gca,'position',p + [0 0 -0.07 0.0])
>> p2 =  [0.8447    0.1381    0.1286    0.7571];
>> set(hl,'position',p2 + [0 +0.007 0 0]);
>> ylabel('12 Year Bias Trend (K)');
>> 
>> 
>> %----------------------- Trends in clear absolute with minor gas removals:    -----------------------
>> 
>> % Don't really need this, nanmean(cg2.dbt_ang,2) is same as cgabs.dbt below. 
>> cgabs = load('clear_secant_2sides','b1','b1err','b2','b2err','dbt1','dbt2','dbt_err1','dbt_err2');
>> cgabs.dbt = (cgabs.dbt1 + cgabs.dbt2)/2;
>> 
>> jac = load('~/Work/Airs/Jacfiles/sarta_l1c_clear_jacs.mat');
l>> oad ~/Matlab/Stats/mlat_equal_area.mat
>> k = find(abs(mlat) < 30);
>> jacall = squeeze(nanmean(jac.M_TS_jac_all(k,:,:)));
>> 
>> dbtminor = jacall(:,1)+0.793*jacall(:,2)+jacall(:,3);
>> % up to here
>> 
>> figure
>> for i=1:17
   m = calprop.modnum == i;
   m = find(m ==1);
   ml1c = chan_l1c_from_chan_l1b(m);
%   [c i1 i2] = intersect(ch,ml1c);
   if i <= 7
      plot(fairs(ml1c),12*(nanmean(cg1.dbt_ang(ml1c,:),2)-dbtminor(ml1c)),'+')
   end
   if (i > 7 & i <= 14)
      plot(fairs(ml1c),12*(nanmean(cg1.dbt_ang(ml1c,:),2)-dbtminor(ml1c)),'o')
   end
   if i > 14
      plot(fairs(ml1c),12*(nanmean(cg1.dbt_ang(ml1c,:),2)-dbtminor(ml1c)),'s')
   end
   if i ==1; hold on; end
end
>> grid;
>> xlim([630 2700]);
>> xwn;
>> 
>> plot(fairs(chan_ab),-yab_abs,'x','color',[0.7 0.7 0.7])
>> plot(fairs(chan_a),-ya_abs,'x','color',[0.7 0.7 0.7])
>> plot(fairs(chan_b),-yb_abs,'x','color',[0.7 0.7 0.7])
>> 
>> hl = legend(modn)

hl = 

  Legend (M12, M11, M10, M9, M8, M7, M6, M5, M4D, M4C, M3, M4B, M4A, M2B…) with properties:

         String: {1x18 cell}
       Location: 'northeast'
    Orientation: 'vertical'
       FontSize: 14.4000
       Position: [0.7625 0.1060 0.1286 0.8012]
          Units: 'normalized'

  Use GET to show all properties

>> p = get(gca,'position');
>> set(gca,'position',p + [0 0 -0.07 0.0])
>> p2 =  [0.8447    0.1381    0.1286    0.7571];
>> set(hl,'position',p2 + [0 +0.007 0 0]);
>> ylabel('12 Year Bias Trend (K)');
>> 
>> c = -44.5:1:44.5;
>> for i=1:90
   ytemp(i) = interp1(t.T_sc1,t.dT2(:,1193,i,1),real(btobs_clr(1269)));
end
>> 
>> %----------------------- DCC left right  ----------------------------------------
>> anom_bt_left = squeeze(nanmean(anom_bt(:,1:15,:),2));
>> anom_bt_right = squeeze(nanmean(anom_bt(:,16:30,:),2));
>> 
>> ylr_1520 = smooth(anom_bt_right(:,1520)-anom_bt_left(:,1520), 16*20,'loess');
y>> lr_1269 = smooth(anom_bt_right(:,1269)-anom_bt_left(:,1269), 16*20,'loess');
y>> lr_1268 = smooth(anom_bt_right(:,1268)-anom_bt_left(:,1268), 16*20,'loess');

>> % get this for Tom's data...
>> % Now do the same for Tom's data
>> for j=1:90
   ytemp_dcc(j) = interp1(t.T_sc1,t.dT2(:,1193,j,1),real(bt_dcc(1268)));
   ytemp_dccx(j) = interp1(t.T_sc1,t.dT2(:,1291,j,1),real(bt_dcc(1520)));
end
>> figure;
>> dtime = datenum(mtime);
>> tom_dcc = (ytemp_dcc/12).*(dtime-dtime(1))/365;
>> plot(mtime,ylr_1520 - ylr_1269,'linewidth',2);
>> hold on;
>> plot(mtime,nanmean(tom_dcc(:,46:90)-tom_dcc(:,1:45),2),'linewidth',2)
>> hl = legend('Obs','L1b\_v7')

hl = 

  Legend (Obs, L1b\_v7) with properties:

         String: {'Obs'  'L1b\_v7'}
       Location: 'northeast'
    Orientation: 'vertical'
       FontSize: 14.4000
       Position: [0.7339 0.8107 0.1571 0.0964]
          Units: 'normalized'

  Use GET to show all properties

>> ylabel('(Right - Left) \Delta BT in K')
>> grid;
>> %---------- Switch to clear -----------------
>> 
>> % Now do the same for Tom's data
>> for j=1:90
   ytemp_c(j) = interp1(t.T_sc1,t.dT2(:,1193,j,1),real(btobs_clr(1268,j)));
end
>> 
>> % Clear bias left right   NOT ENOUGH SENSITIVITY, use stability fit residuals
>> anom_bt_left_c = squeeze(nanmean(cg1.anom_bt(:,1:15,:),2));
>> anom_bt_right_c = squeeze(nanmean(cg1.anom_bt(:,16:30,:),2));

>> ylr_1520 = smooth(anom_bt_right_c(:,1520)-anom_bt_left_c(:,1520), 16*20,'loess');
y>> lr_1269 = smooth(anom_bt_right_c(:,1269)-anom_bt_left_c(:,1269), 16*20,'loess');
>> ylr_1268 = smooth(anom_bt_right_c(:,1268)-anom_bt_left_c(:,1268), 16*20,'loess');
>> 
>> ylr_1520_abs = smooth((anom_bt_right_c(:,1520) + anom_bt_left_c(:,1520))/2, 16*20,'loess');
>> ylr_1269_abs = smooth((anom_bt_right_c(:,1269)+anom_bt_left_c(:,1269))/2, 16*20,'loess');
>> ylr_1268_abs = smooth((anom_bt_right_c(:,1268)+anom_bt_left_c(:,1268))/2, 16*20,'loess');
>> 
>> 
>> cg_mtime = load('mtime_for_bias_clear.mat');
>> cg_mtime = cg_mtime.mtime;
>> cg_dtime = datenum(cg_mtime);
>> figure
>> tom = (ytemp_c/12).*(cg_dtime-cg_dtime(1))/365;
>> plot(cg_mtime,-ylr_1520 + ylr_1268,'linewidth',2)
>> hold on;
>> plot(cg_mtime,nanmean(-tom(:,46:90)+tom(:,1:45),2),'linewidth',2)
>> grid
>> hl = legend('Clear Obs','L1b\_V7')

hl = 

  Legend (Clear Obs, L1b\_V7) with properties:

         String: {'Clear Obs'  'L1b\_V7'}
       Location: 'northeast'
    Orientation: 'vertical'
       FontSize: 14.4000
       Position: [0.7018 0.8107 0.1893 0.0964]
          Units: 'normalized'

  Use GET to show all properties

>> ylabel('(Right - Left) \Delta B(T) in K');
>> 
>> figure
>> plot(cg_mtime,ylr_1268,'linewidth',2)
>> hold on;
>> plot(cg_mtime,ylr_1520,'linewidth',2)
>> grid
>> ylabel('BT Bias Anomaly in K')
>> hl = legend('1100 cm-1','1231 cm-1')

hl = 

  Legend (1100 cm-1, 1231 cm-1) with properties:

         String: {'1100 cm-1'  '1231 cm-1'}
       Location: 'northeast'
    Orientation: 'vertical'
       FontSize: 14.4000
       Position: [0.6929 0.8107 0.1982 0.0964]
          Units: 'normalized'

  Use GET to show all properties

>> 
>> 
>> % 
>> 
>> figure(1)
>> figure(2)
>> figure(3)
>> figure(4)
>> figure(5)
>> figure(6)
>> figure(7)
>> figure(8)
>> figure(9)
>> figure(10)
>> figure(11)
>> figure(12)
>> figure(13)
>> figure(14)
>> figure(8)
>> g = load('r_mean_clear_xtrack.mat');
>> 
>> g

g = 

  struct with fields:

    rmean: [90x2645 double]

>> figure
>> plot(g.rmean(22,:))
>> cg1

cg1 = 

  struct with fields:

        anom_bt: [6152x30x2645 double]
          b_ang: [2645x30x10 double]
       b_angerr: [2645x30 double]
        dbt_ang: [2645x30 double]
     dbt_angerr: [2645x30 double]
    dbt_ang_fit: [2645x30 double]

>> 0.15/12

ans =

    0.0125

>> ans*10

ans =

    0.1250

>> figure
>> plot(fairs,nanmean(cg1.dbt_ang,2))
>> grid
>> hold on;
>> plot(fairs,nanmean(cg1.dbt_ang_fit,2))
>> figure
>> plot(fairs,nanmean(cg1.b_ang,15,1))
Error using nanmean (line 23)
Too many input arguments.
 
>> plot(fairs,nanmean(cg1.b_ang(:,15,1)))
>> plot(fairs,cg1.b_ang(:,15,1))
>> plot(fairs,cg1.b_ang(:,15,2))
>> plot(cg1.anom_bt(:,15,1520))
>> 0.1/12

ans =

    0.0083

>> close all
>> cd ~/Matlab/
>> dir *chirp*

chirp_nu_official.mat  fchirp.mat             

>> whos -file fchirp
  Name           Size            Bytes  Class     Attributes

  fchirp      1679x1             13432  double              

>> load_fiasi
>> whos fiasi
  Name          Size            Bytes  Class     Attributes

  fiasi      8461x1             67688  double              

>> 8461/1679

ans =

    5.0393

>> pwd

ans =

    '/Users/strow/Matlab'

>> cdhd
>> symbolic CR
Unrecognized function or variable 'symbolic'.
 
>> sym CR
 
ans =
 
CR
 
>> whos CR
>> doc
>> syms CR
>> whos
  Name                    Size                      Bytes  Class                                   Attributes

  CR                      1x1                           8  sym                                               
  allb                 2645x3                       63480  double                                            
  allbc                2645x3                       63480  double                                            
  allbint              2645x3x2                    126960  double                                            
  allbintc             2645x3x2                    126960  double                                            
  anom_bt              6671x30x2645            4234750800  double                                            
  anom_bt_left         6671x2645                141158360  double                                            
  anom_bt_left_c       6152x2645                130176320  double                                            
  anom_bt_right        6671x2645                141158360  double                                            
  anom_bt_right_c      6152x2645                130176320  double                                            
  ans                     1x1                           8  sym                                               
  asy_dbt                 1x2645                    21160  double                                            
  b                       3x1                          24  double                                            
  b_ang                2645x30x10                 6348000  double                                            
  b_angerr             2645x30                     634800  double                                            
  bint                    3x2                          48  double                                            
  bt_dcc               2645x1                       21160  double                                            
  btc                     1x2645                    21160  double                                            
  btobs_clr            2645x90                    1904400  double                                            
  btu                     1x1                           8  double                                            
  c                       1x90                        720  double                                            
  calprop                 1x1                     7215026  struct                                            
  cg1                     1x1                  3914177808  struct                                            
  cg_dtime             6152x1                       49216  double                                            
  cg_mtime             6152x1                       49216  datetime                                          
  cgabs                   1x1                      572832  struct                                            
  ch                      1x1                           8  double                                            
  ch1b                 2314x1                       18512  double                                            
  ch1c                 2314x1                       18512  double                                            
  ch_a_l1b              246x1                        1968  double                                            
  ch_ab_l1b            1193x1                        9544  double                                            
  ch_b_l1b              249x1                        1992  double                                            
  chan_a                246x1                        1968  double                                            
  chan_ab              1193x1                        9544  double                                            
  chan_b                249x1                        1992  double                                            
  chan_l1b             2314x1                       18512  double                                            
  co                      1x3                          24  double                                            
  dbt_ang              2645x30                     634800  double                                            
  dbt_ang_fit          2645x30                     634800  double                                            
  dbt_angerr           2645x30                     634800  double                                            
  dbtminor             2645x1                       10580  single                                            
  dccstat                 1x1                      572832  struct                                            
  dtime                6671x1                       53368  double                                            
  f                    2378x1                       19024  double                                            
  fairs                2645x1                       21160  double                                            
  fiasi                8461x1                       67688  double                                            
  g                       1x1                     1904568  struct                                            
  ha                      1x1                           8  matlab.graphics.chart.primitive.Line              
  hab                     1x1                           8  matlab.graphics.chart.primitive.Line              
  hb                      1x1                           8  matlab.graphics.chart.primitive.Line              
  hl                      1x1                           8  matlab.graphics.illustration.Legend               
  i                       1x1                           8  double                                            
  j                       1x1                           8  double                                            
  jac                     1x1                   125293102  struct                                            
  jacall               2645x296                   3131680  single                                            
  k                       1x20                        160  double                                            
  m                       1x118                       944  double                                            
  ml1c                  102x1                         816  double                                            
  mlat                    1x40                        160  single                                            
  modn                    1x18                       1970  cell                                              
  mtime                6671x1                       53368  datetime                                          
  p                       1x4                          32  double                                            
  p2                      1x4                          32  double                                            
  r                      30x1                         240  double                                            
  rint                   30x2                         480  double                                            
  rmean                  90x2645                  1904400  double                                            
  satzen                  1x90                        720  double                                            
  scanang                 1x90                        720  double                                            
  stats                   1x4                          32  double                                            
  t                       1x1                   299169242  struct                                            
  tom                  6152x90                    2214720  single                                            
  tom_dcc              6671x90                    2401560  single                                            
  x                      30x3                         720  double                                            
  xsatzen                 1x30                        240  double                                            
  xscanang                1x30                        240  double                                            
  xt                      1x1                           8  double                                            
  xti                     1x1                           8  double                                            
  ya                      1x246                       984  single                                            
  ya_abs                  1x246                       984  single                                            
  yab                     1x1193                     4772  single                                            
  yab_abs                 1x1193                     4772  single                                            
  yb                      1x249                       996  single                                            
  yb_abs                  1x249                       996  single                                            
  ylr_1268             6152x1                       49216  double                                            
  ylr_1268_abs         6152x1                       49216  double                                            
  ylr_1269             6152x1                       49216  double                                            
  ylr_1269_abs         6152x1                       49216  double                                            
  ylr_1520             6152x1                       49216  double                                            
  ylr_1520_abs         6152x1                       49216  double                                            
  yp                    102x1                         816  double                                            
  ytemp                   1x90                        360  single                                            
  ytemp_c                 1x90                        360  single                                            
  ytemp_dcc               1x90                        360  single                                            
  ytemp_dccx              1x90                        360  single                                            

>> clear
>> syms CR
>> whos
  Name      Size            Bytes  Class    Attributes

  CR        1x1                 8  sym                

>> syms robc
>> syms rho
>> syms delta
>> syms psm
>> syms theta
>> r = (CR robc(1 + rho * cos(2 * delta))
 r = (CR robc(1 + rho * cos(2 * delta))
         |
Invalid expression. Check for missing multiplication operator, missing or unbalanced delimiters, or
other syntax error. To construct matrices, use brackets instead of parentheses.
 
>> r = (CR * robc*(1 + rho * cos(2 * delta))
 r = (CR * robc*(1 + rho * cos(2 * delta))
                                          |
Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check
for mismatched delimiters.
 
>> r = (CR * robc*(1 + rho * cos(2 * delta)))
 
r =
 
CR*robc*(rho*cos(2*delta) + 1)
 
>> r = r - rho * psm * ((2*CR)*cos(2 * delta) - cos(2*(theta - delta)))
 
r =
 
CR*robc*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta - 2*theta) - 2*CR*cos(2*delta))
 
>> r = r/(1 + rho * cos(theta - delta))
 
r =
 
(CR*robc*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta - 2*theta) - 2*CR*cos(2*delta)))/(rho*cos(delta - theta) + 1)
 
>> diff(r,theta)
 
ans =
 
(2*psm*rho*sin(2*delta - 2*theta))/(rho*cos(delta - theta) + 1) - (rho*sin(delta - theta)*(CR*robc*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta - 2*theta) - 2*CR*cos(2*delta))))/(rho*cos(delta - theta) + 1)^2
 
>> dtheta = (2*psm*rho*sin(2*delta - 2*theta))/(rho*cos(delta - theta) + 1) - (rho*sin(delta - theta)*(CR*robc*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta - 2*theta) - 2*CR*cos(2*delta))))/(rho*cos(delta - theta) + 1)^2
 
dtheta =
 
(2*psm*rho*sin(2*delta - 2*theta))/(rho*cos(delta - theta) + 1) - (rho*sin(delta - theta)*(CR*robc*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta - 2*theta) - 2*CR*cos(2*delta))))/(rho*cos(delta - theta) + 1)^2
 
>> r(theta = 0)
Unable to use a value of type string as an index.

Error in sym/subsref (line 909)
            R_tilde = builtin('subsref',L_tilde,Idx);
 
>> double(theta)
Error using symengine
Unable to convert expression containing symbolic variables into double array. Apply 'subs' function first to substitute values for variables.

Error in sym/double (line 709)
        Xstr = mupadmex('symobj::double', S.s, 0);
 
>> doc subs
>> ro = subs(r,theta,0);
>> ro
 
ro =
 
(CR*robc*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta) - 2*CR*cos(2*delta)))/(rho*cos(delta) + 1)
 
>> rr = r-ro;
>> diff(rr,theta)
 
ans =
 
(2*psm*rho*sin(2*delta - 2*theta))/(rho*cos(delta - theta) + 1) - (rho*sin(delta - theta)*(CR*robc*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta - 2*theta) - 2*CR*cos(2*delta))))/(rho*cos(delta - theta) + 1)^2
 
>> diff(rr,theta) - diff(r,theta)
 
ans =
 
0
 
>> ro
 
ro =
 
(CR*robc*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta) - 2*CR*cos(2*delta)))/(rho*cos(delta) + 1)
 
>> rr(theta)-ro
Error using sym/subsindex (line 864)
Invalid indexing or function definition. Indexing must follow MATLAB indexing. Function arguments must be symbolic variables, and function body must be sym expression.

Error in sym/subsref (line 909)
            R_tilde = builtin('subsref',L_tilde,Idx);
 
>> r
 
r =
 
(CR*robc*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta - 2*theta) - 2*CR*cos(2*delta)))/(rho*cos(delta - theta) + 1)
 
>> diff(r,theta)
 
ans =
 
(2*psm*rho*sin(2*delta - 2*theta))/(rho*cos(delta - theta) + 1) - (rho*sin(delta - theta)*(CR*robc*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta - 2*theta) - 2*CR*cos(2*delta))))/(rho*cos(delta - theta) + 1)^2
 
>> diff(r,delta)
 
ans =
 
(rho*sin(delta - theta)*(CR*robc*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta - 2*theta) - 2*CR*cos(2*delta))))/(rho*cos(delta - theta) + 1)^2 - (psm*rho*(2*sin(2*delta - 2*theta) - 4*CR*sin(2*delta)) + 2*CR*rho*robc*sin(2*delta))/(rho*cos(delta - theta) + 1)
 
>> diff(r,psm)
 
ans =
 
(rho*(cos(2*delta - 2*theta) - 2*CR*cos(2*delta)))/(rho*cos(delta - theta) + 1)
 
>> diff(r,CR)
 
ans =
 
(robc*(rho*cos(2*delta) + 1) - 2*psm*rho*cos(2*delta))/(rho*cos(delta - theta) + 1)
 
>> diff(r,robc)
 
ans =
 
(CR*(rho*cos(2*delta) + 1))/(rho*cos(delta - theta) + 1)
 
>> diff(r,theta)
 
ans =
 
(2*psm*rho*sin(2*delta - 2*theta))/(rho*cos(delta - theta) + 1) - (rho*sin(delta - theta)*(CR*robc*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta - 2*theta) - 2*CR*cos(2*delta))))/(rho*cos(delta - theta) + 1)^2
 
>> rr
 
rr =
 
(CR*robc*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta - 2*theta) - 2*CR*cos(2*delta)))/(rho*cos(delta - theta) + 1) - (CR*robc*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta) - 2*CR*cos(2*delta)))/(rho*cos(delta) + 1)
 
>> plot(rr)
Error using plot
Data must be numeric, datetime, duration or an array convertible to double.
 
>> doc
>> rrs = simplify(rr);
>> rrs
 
rrs =
 
(CR*robc*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta - 2*theta) - 2*CR*cos(2*delta)))/(rho*cos(delta - theta) + 1) - (CR*robc*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta) - 2*CR*cos(2*delta)))/(rho*cos(delta) + 1)
 
>> chr = latex(rrs);
>> chr

chr =

    '\frac{\mathrm{CR}\,\mathrm{robc}\,\left(\rho \,\cos\left(2\,\delta \right)+1\right)+\mathrm{psm}\,\rho \,\left(\cos\left(2\,\delta -2\,\theta \right)-2\,\mathrm{CR}\,\cos\left(2\,\delta \right)\right)}{\rho \,\cos\left(\delta -\theta \right)+1}-\frac{\mathrm{CR}\,\mathrm{robc}\,\left(\rho \,\cos\left(2\,\delta \right)+1\right)+\mathrm{psm}\,\rho \,\left(\cos\left(2\,\delta \right)-2\,\mathrm{CR}\,\cos\left(2\,\delta \right)\right)}{\rho \,\cos\left(\delta \right)+1}'

>> delta = 0;
>> rho = 0.01;
>> theta = -45:1:45;
>> thetar = deg2rad(theta);
>> a = (1 + rho*cos(2*delta))./(1 + rho*cos(thetar - delta));
>> plot(theta,a)
>> hold on;
>> delta = pi/4;
>> a = (1 + rho*cos(2*delta))./(1 + rho*cos(thetar - delta));
>> plot(theta,a)
>> delta = pi/2

delta =

    1.5708

>> a = (1 + rho*cos(2*delta))./(1 + rho*cos(thetar - delta));
>> plot(theta,a)
>> clf
>> whos a
  Name      Size            Bytes  Class     Attributes

  a         1x91              728  double              

>> theta = -44.t:1:44.5;
 theta = -44.t:1:44.5;
             |
Invalid expression. Check for missing multiplication operator, missing or unbalanced delimiters, or
other syntax error. To construct matrices, use brackets instead of parentheses.
 
>> theta = -44.5:1:44.5;
>> whos theta
  Name       Size            Bytes  Class     Attributes

  theta      1x90              720  double              

>> thetar = deg2rad(theta);
>> delete = 0;
>> delta = 0

delta =

     0

>> a = (1 + rho*cos(2*delta))./(1 + rho*cos(thetar - delta));
>> plot(theta,a-a(45))
>> hold on;
>> r300 = bt2rad(1000,300);
>> rad2bt(1000,1.003*r300)

ans =

  300.1859

>> delta = pi/4;
>> a = (1 + rho*cos(2*delta))./(1 + rho*cos(thetar - delta));
>> plot(theta,a-a(45))
>> delta = pi/2

delta =

    1.5708

>> a = (1 + rho*cos(2*delta))./(1 + rho*cos(thetar - delta));
>> plot(theta,a-a(45))
>> delta = 3*pi/4

delta =

    2.3562

>> a = (1 + rho*cos(2*delta))./(1 + rho*cos(thetar - delta));
>> plot(theta,a-a(45))
>> for delta = 0:pi/10:2*pi
end
>> k = 1

k =

     1

>> for delta = 0:pi/10:2*pi
a = (1 + rho*cos(2*delta))./(1 + rho*cos(thetar - delta));
aa(k,:) = a;
k = k + 1;
end
>> whos a
  Name      Size            Bytes  Class     Attributes

  a         1x90              720  double              

>> whos a
  Name      Size            Bytes  Class     Attributes

  a         1x90              720  double              

>> k = 1;
>> for delta = 0:pi/30:2*pi
a = (1 + rho*cos(2*delta))./(1 + rho*cos(thetar - delta));
aa(k,:) = a;
k = k + 1
end

k =

     2


k =

     3


k =

     4


k =

     5


k =

     6


k =

     7


k =

     8


k =

     9


k =

    10


k =

    11


k =

    12


k =

    13


k =

    14


k =

    15


k =

    16


k =

    17


k =

    18


k =

    19


k =

    20


k =

    21


k =

    22

>> whos aa
  Name       Size            Bytes  Class     Attributes

  aa        21x90            15120  double              

>> imagesc(aa)
>> clf
>> imagesc(aa)
>> colorbar
>> k = 1;
>> for delta = 0:pi/30:2*pi
a = (1 + rho*cos(2*delta))./(1 + rho*cos(thetar - delta));
aa(k,:) = a;
k = k + 1
end
k = 1;
>> >> for delta = 0:pi/30:2*pi
 >> for delta = 0:pi/30:2*pi
 |
Invalid use of operator.
 
>> a = (1 + rho*cos(2*delta))./(1 + rho*cos(thetar - delta));
>> aa(k,:) = a;
>> k = k + 1

k =

     2

>> end
 end
 |
Error: Illegal use of reserved keyword "end".
 
>> k = 1;
for delta = 0:pi/30:2*pi
a = (1 + rho*cos(2*delta))./(1 + rho*cos(thetar - delta));
aa(k,:) = a;
k = k + 1
end
k = 1;
>> for delta = 0:pi/30:2*pi
a = (1 + rho*cos(2*delta))./(1 + rho*cos(thetar - delta));
aa(k,:) = a;
k = k + 1
end

k =

     2


k =

     3


k =

     4


k =

     5


k =

     6


k =

     7


k =

     8


k =

     9


k =

    10


k =

    11


k =

    12


k =

    13


k =

    14


k =

    15


k =

    16


k =

    17


k =

    18


k =

    19


k =

    20


k =

    21


k =

    22


k =

    23


k =

    24


k =

    25


k =

    26


k =

    27


k =

    28


k =

    29


k =

    30


k =

    31


k =

    32


k =

    33


k =

    34


k =

    35


k =

    36


k =

    37


k =

    38


k =

    39


k =

    40


k =

    41


k =

    42


k =

    43


k =

    44


k =

    45


k =

    46


k =

    47


k =

    48


k =

    49


k =

    50


k =

    51


k =

    52


k =

    53


k =

    54


k =

    55


k =

    56


k =

    57


k =

    58


k =

    59


k =

    60


k =

    61


k =

    62

>> imagesc(aa)
>> whos aa
  Name       Size            Bytes  Class     Attributes

  aa        61x90            43920  double              

>> delta = 0:pi/30:2*pi;
>> whos delta
  Name       Size            Bytes  Class     Attributes

  delta      1x61              488  double              

>> whos theta
  Name       Size            Bytes  Class     Attributes

  theta      1x90              720  double              

>> pcolor(delta,theta,aa)
Error using pcolor (line 61)
Matrix dimensions must agree.
 
>> pcolor(delta,theta,aa')
>> shading flat
>> colorbar
>> caxis

ans =

    0.9826    1.0202

>> pcolor(delta,theta,aa'-1)
>> colorbar
>> caxis

ans =

   -0.0174    0.0202

>> caxis([-0.02 0.02])
>> load ~/Matlab/Cmaps/llsmap5
>> colormap(llsmap5)
>> shading flat
>> box on
>> set(gca,'layer','top')
>> whos delta
  Name       Size            Bytes  Class     Attributes

  delta      1x61              488  double              

>> adelta = rad2deg(delta);
>> pcolor(delta,theta,aa'-1)
>> pcolor(adelta,theta,aa'-1)
>> shading flat
>> box on
>> set(gca,'layer','top')
>> caxis([-0.02 0.02])
>> ylabel('Scan Angle (deg)')
>> xlabel('delta (deg)')
>> xlabel('\delta (deg)')
>> colorbar
>> figure
>> whos aa
  Name       Size            Bytes  Class     Attributes

  aa        61x90            43920  double              

>> plot(theta,aa)
>> plot(theta,aa-1)
>> grid
>> ulim([-0.02 0.02])
Unrecognized function or variable 'ulim'.
 
>> ylim([-0.02 0.02])
>> ylim([-0.022 0.022])
>> clf
>> plot(theta,aa'-1)
>> ylim([-0.022 0.022])
>> grid
>> whos aa
  Name       Size            Bytes  Class     Attributes

  aa        61x90            43920  double              

>> for i=1:61
aaa(i,:) = (aa(i,45) + aa(i,46))/2;
end
>> plot(theta,aa'-1)
>> plot(theta,aaa'-1)
Error using plot
Vectors must be the same length.
 
>> whos aaa
  Name       Size            Bytes  Class     Attributes

  aaa       61x1               488  double              

>> for i=1:61
bb = (aa(i,45) + aa(i,46))/2;
aaa(i,:) = aa(i,:) - bb;
end
Unable to perform assignment because the size of the left side is 1-by-1 and the size of the right side
is 1-by-90.
 
>> whos aa
  Name       Size            Bytes  Class     Attributes

  aa        61x90            43920  double              

>> whos aa
  Name       Size            Bytes  Class     Attributes

  aa        61x90            43920  double              

>> whos aa
  Name       Size            Bytes  Class     Attributes

  aa        61x90            43920  double              

>> clear aaa
>> for i=1:61
bb = (aa(i,45) + aa(i,46))/2;
aaa(i,:) = aa(i,:) - bb;
end
>> whos aaa
  Name       Size            Bytes  Class     Attributes

  aaa       61x90            43920  double              

>> plot(theta,aaa'-1)
>> plot(theta,aaa')
>> grid
>> figure(1);
>> pcolor(adelta,theta,aaa')
>> colorbar
>> caxis

ans =

   -0.0075    0.0075

>> shading flat
>> box on
>> set(gca,'layer','top')
>> xlabel('\delta (deg)')
>> ylabel('Scan Angle (deg)')
>> figure
>> whos aaa
  Name       Size            Bytes  Class     Attributes

  aaa       61x90            43920  double              

>> plot(adelta,aaa(:,1)-aaa(:,90)
 plot(adelta,aaa(:,1)-aaa(:,90)
                               |
Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check
for mismatched delimiters.
 
>> plot(adelta,aaa(:,1)-aaa(:,90))
>> grid
>> xlabel('\delta (deg)')
>> ylabel('dR Scan Position 1 minus 90')
>> rad2bt(1000,1.0015*r300)

ans =

  300.0930

>> rho

rho =

    0.0100

>> r200 = bt2rad(1000,200);
>> rad2bt(1000,1.0015*r200)

ans =

  200.0416

>> psm = bt2rad(1000,260)

psm =

   47.2465

>> rho*PSM
Unrecognized function or variable 'PSM'.
 
>> rho*psm

ans =

    0.4725

>> rho

rho =

    0.0100

>> rad2bt(1000,0.4725)

ans =

  141.9621

>> rho*psm/bt2rad(1000,200)

ans =

    0.0528

>> figure
>> plot(theta,aa)
>> plot(theta,aa-1)
>> clear
>> syms CR
syms robc
syms rho
syms delta
syms psm
syms theta

r = (CR * robc*(1 + rho * cos(2 * delta)));
r = r - rho * psm * ((2*CR)*cos(2 * delta) - cos(2*(theta - delta)));
r = r/(1 + rho * cos(theta - delta));
 
ro = subs(r,theta,0);


g = matlabFunction(r);

syms CR
>> syms robc
>> syms rho
>> syms delta
>> syms psm
>> syms theta
>> 
>> r = (CR * robc*(1 + rho * cos(2 * delta)));
>> r = r - rho * psm * ((2*CR)*cos(2 * delta) - cos(2*(theta - delta)));
>> r = r/(1 + rho * cos(theta - delta));
>>  
>> ro = subs(r,theta,0);
>> 
>> 
>> g = matlabFunction(r);
>> 
>> g

g =

  function_handle with value:

    @(CR,delta,psm,rho,robc,theta)(CR.*robc.*(rho.*cos(delta.*2.0)+1.0)+psm.*rho.*(cos(delta.*2.0-theta.*2.0)-CR.*cos(delta.*2.0).*2.0))./(rho.*cos(delta-theta)+1.0)

>> whos g
  Name      Size            Bytes  Class              Attributes

  g         1x1                32  function_handle              

>> matlabFunction(r,'File','rsym');
>> pwd

ans =

    '/Users/strow/Desktop'

>> cd ~/Work/Airs/Memos/
>> lsd
drwxr-xr-x  23 strow  staff       736 Dec 18 11:00 cal_talk_dec1_2021
drwxr-xr-x  42 strow  staff      1344 Nov 18 15:36 Joao_l1bcal_memo
drwxr-xr-x   5 strow  staff       160 Oct  5 21:47 White_paper
drwxr-xr-x   8 strow  staff       256 Mar 18  2021 March18_2021_email
drwxr-xr-x  11 strow  staff       352 Jul 29  2020 Joao_hq_summary_july_2020
drwxr-xr-x   6 strow  staff       192 Jan 13  2020 Senior_review_2020
drwxr-xr-x   9 strow  staff       288 Jan  7  2020 Joao_Jan2020
drwxr-xr-x  15 strow  staff       480 Dec 10  2019 Joao_June2019
drwxr-xr-x  19 strow  staff       608 Nov  4  2019 Airs_cal_July2019
drwxr-xr-x   9 strow  staff       288 Jun 26  2019 Hha_June2019
drwxr-xr-x   8 strow  staff       256 Jun 11  2019 Joao_Feb2019
drwxr-xr-x   6 strow  staff       192 Dec 12  2018 Joao_Dec2018
drwxr-xr-x   8 strow  staff       256 Aug 15  2017 Dcc_memo
>> cd cal_talk_dec1_2021/
>> matlabFunction(r,'File','rsym');
>> r
 
r =
 
(CR*robc*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta - 2*theta) - 2*CR*cos(2*delta)))/(rho*cos(delta - theta) + 1)
 
>> clear r
syms rx

r = (rx*(1 + rho * cos(2 * delta)));
r = r - rho * psm * ((2*robc/rx)*cos(2 * delta) - cos(2*(theta - delta)));
r = r/(1 + rho * cos(theta - delta));


clear r
>> syms rx
>> 
>> r = (rx*(1 + rho * cos(2 * delta)));
>> r = r - rho * psm * ((2*robc/rx)*cos(2 * delta) - cos(2*(theta - delta)));
>> r = r/(1 + rho * cos(theta - delta));
>> 
>> 
>> r
 
r =
 
(rx*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta - 2*theta) - (2*robc*cos(2*delta))/rx))/(rho*cos(delta - theta) + 1)
 
>> matlabFunction(r,'File','rxsym');
>> rfrac = (r/rx) -1;
>> rfrac
 
rfrac =
 
(rx*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta - 2*theta) - (2*robc*cos(2*delta))/rx))/(rx*(rho*cos(delta - theta) + 1)) - 1
 
>> chr = latex(rfrac);
>> chr

chr =

    '\frac{\mathrm{rx}\,\left(\rho \,\cos\left(2\,\delta \right)+1\right)+\mathrm{psm}\,\rho \,\left(\cos\left(2\,\delta -2\,\theta \right)-\frac{2\,\mathrm{robc}\,\cos\left(2\,\delta \right)}{\mathrm{rx}}\right)}{\mathrm{rx}\,\left(\rho \,\cos\left(\delta -\theta \right)+1\right)}-1'

>> rfrac_simp = simplify(rfrac);
>> rfrac_simp
 
rfrac_simp =
 
(rx*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta - 2*theta) - (2*robc*cos(2*delta))/rx))/(rx*(rho*cos(delta - theta) + 1)) - 1
 
>> ro = subs(r,theta,0);
>> rfrac = (r - ro)/rx;
>> rfrac
 
rfrac =
 
((rx*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta - 2*theta) - (2*robc*cos(2*delta))/rx))/(rho*cos(delta - theta) + 1) - (rx*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta) - (2*robc*cos(2*delta))/rx))/(rho*cos(delta) + 1))/rx
 
>> chr = latex(rfrac);
>> chr

chr =

    '\frac{\frac{\mathrm{rx}\,\left(\rho \,\cos\left(2\,\delta \right)+1\right)+\mathrm{psm}\,\rho \,\left(\cos\left(2\,\delta -2\,\theta \right)-\frac{2\,\mathrm{robc}\,\cos\left(2\,\delta \right)}{\mathrm{rx}}\right)}{\rho \,\cos\left(\delta -\theta \right)+1}-\frac{\mathrm{rx}\,\left(\rho \,\cos\left(2\,\delta \right)+1\right)+\mathrm{psm}\,\rho \,\left(\cos\left(2\,\delta \right)-\frac{2\,\mathrm{robc}\,\cos\left(2\,\delta \right)}{\mathrm{rx}}\right)}{\rho \,\cos\left(\delta \right)+1}}{\mathrm{rx}}'

>> rfrac_simp = simplify(rfrac);
>> rfrac_simp
 
rfrac_simp =
 
((rx*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta - 2*theta) - (2*robc*cos(2*delta))/rx))/(rho*cos(delta - theta) + 1) - (rx*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta) - (2*robc*cos(2*delta))/rx))/(rho*cos(delta) + 1))/rx
 
>> 
>> 
>> rdiff = r-ro;
>> latex(rdiff)

ans =

    '\frac{\mathrm{rx}\,\left(\rho \,\cos\left(2\,\delta \right)+1\right)+\mathrm{psm}\,\rho \,\left(\cos\left(2\,\delta -2\,\theta \right)-\frac{2\,\mathrm{robc}\,\cos\left(2\,\delta \right)}{\mathrm{rx}}\right)}{\rho \,\cos\left(\delta -\theta \right)+1}-\frac{\mathrm{rx}\,\left(\rho \,\cos\left(2\,\delta \right)+1\right)+\mathrm{psm}\,\rho \,\left(\cos\left(2\,\delta \right)-\frac{2\,\mathrm{robc}\,\cos\left(2\,\delta \right)}{\mathrm{rx}}\right)}{\rho \,\cos\left(\delta \right)+1}\'

>> expand(rdiff)
 
ans =
 
rx/(rho*cos(delta)*cos(theta) + rho*sin(delta)*sin(theta) + 1) - rx/(rho*cos(delta) + 1) + (psm*rho)/(rho*cos(delta)*cos(theta) + rho*sin(delta)*sin(theta) + 1) - (rho*rx)/(rho*cos(delta)*cos(theta) + rho*sin(delta)*sin(theta) + 1) + (psm*rho)/(rho*cos(delta) + 1) + (rho*rx)/(rho*cos(delta) + 1) - (2*psm*rho*cos(delta)^2)/(rho*cos(delta)*cos(theta) + rho*sin(delta)*sin(theta) + 1) + (2*rho*rx*cos(delta)^2)/(rho*cos(delta)*cos(theta) + rho*sin(delta)*sin(theta) + 1) - (2*psm*rho*cos(theta)^2)/(rho*cos(delta)*cos(theta) + rho*sin(delta)*sin(theta) + 1) - (2*psm*rho*cos(delta)^2)/(rho*cos(delta) + 1) - (2*rho*rx*cos(delta)^2)/(rho*cos(delta) + 1) + (2*psm*rho*robc)/(rx + rho*rx*sin(delta)*sin(theta) + rho*rx*cos(delta)*cos(theta)) - (2*psm*rho*robc)/(rx + rho*rx*cos(delta)) + (4*psm*rho*robc*cos(delta)^2)/(rx + rho*rx*cos(delta)) + (4*psm*rho*cos(delta)^2*cos(theta)^2)/(rho*cos(delta)*cos(theta) + rho*sin(delta)*sin(theta) + 1) - (4*psm*rho*robc*cos(delta)^2)/(rx + rho*rx*sin(delta)*sin(theta) + rho*rx*cos(delta)*cos(theta)) + (4*psm*rho*cos(delta)*sin(delta)*cos(theta)*sin(theta))/(rho*cos(delta)*cos(theta) + rho*sin(delta)*sin(theta) + 1)
 
>> latex(expand(rdiff))

ans =

    '\frac{\mathrm{rx}}{\rho \,\cos\left(\delta \right)\,\cos\left(\theta \right)+\rho \,\sin\left(\delta \right)\,\sin\left(\theta \right)+1}-\frac{\mathrm{rx}}{\rho \,\cos\left(\delta \right)+1}+\frac{\mathrm{psm}\,\rho }{\rho \,\cos\left(\delta \right)\,\cos\left(\theta \right)+\rho \,\sin\left(\delta \right)\,\sin\left(\theta \right)+1}-\frac{\rho \,\mathrm{rx}}{\rho \,\cos\left(\delta \right)\,\cos\left(\theta \right)+\rho \,\sin\left(\delta \right)\,\sin\left(\theta \right)+1}+\frac{\mathrm{psm}\,\rho }{\rho \,\cos\left(\delta \right)+1}+\frac{\rho \,\mathrm{rx}}{\rho \,\cos\left(\delta \right)+1}-\frac{2\,\mathrm{psm}\,\rho \,{\cos\left(\delta \right)}^2}{\rho \,\cos\left(\delta \right)\,\cos\left(\theta \right)+\rho \,\sin\left(\delta \right)\,\sin\left(\theta \right)+1}+\frac{2\,\rho \,\mathrm{rx}\,{\cos\left(\delta \right)}^2}{\rho \,\cos\left(\delta \right)\,\cos\left(\theta \right)+\rho \,\sin\left(\delta \right)\,\sin\left(\theta \right)+1}-\frac{2\,\mathrm{psm}\,\rho \,{\cos\left(\theta \right)}^2}{\rho \,\cos\left(\delta \right)\,\cos\left(\theta \right)+\rho \,\sin\left(\delta \right)\,\sin\left(\theta \right)+1}-\frac{2\,\mathrm{psm}\,\rho \,{\cos\left(\delta \right)}^2}{\rho \,\cos\left(\delta \right)+1}-\frac{2\,\rho \,\mathrm{rx}\,{\cos\left(\delta \right)}^2}{\rho \,\cos\left(\delta \right)+1}+\frac{2\,\mathrm{psm}\,\rho \,\mathrm{robc}}{\mathrm{rx}+\rho \,\mathrm{rx}\,\sin\left(\delta \right)\,\sin\left(\theta \right)+\rho \,\mathrm{rx}\,\cos\left(\delta \right)\,\cos\left(\theta \right)}-\frac{2\,\mathrm{psm}\,\rho \,\mathrm{robc}}{\mathrm{rx}+\rho \,\mathrm{rx}\,\cos\left(\delta \right)}+\frac{4\,\mathrm{psm}\,\rho \,\mathrm{robc}\,{\cos\left(\delta \right)}^2}{\mathrm{rx}+\rho \,\mathrm{rx}\,\cos\left(\delta \right)}+\frac{4\,\mathrm{psm}\,\rho \,{\cos\left(\delta \right)}^2\,{\cos\left(\theta \right)}^2}{\rho \,\cos\left(\delta \right)\,\cos\left(\theta \right)+\rho \,\sin\left(\delta \right)\,\sin\left(\theta \right)+1}-\frac{4\,\mathrm{psm}\,\rho \,\mathrm{robc}\,{\cos\left(\delta \right)}^2}{\mathrm{rx}+\rho \,\mathrm{rx}\,\sin\left(\delta \right)\,\sin\left(\theta \right)+\rho \,\mathrm{rx}\,\cos\left(\delta \right)\,\cos\left(\theta \right)}+\frac{4\,\mathrm{psm}\,\rho \,\cos\left(\delta \right)\,\sin\left(\delta \right)\,\cos\left(\theta \right)\,\sin\left(\theta \right)}{\rho \,\cos\left(\delta \right)\,\cos\left(\theta \right)+\rho \,\sin\left(\delta \right)\,\sin\left(\theta \right)+1}'

>> help rxsym
>> delta = 0:pi/30:2*pi;
>> psm = bt2rad(1000,260)

psm =

   47.2465

>> rho = 0.01;
>> rx = bt2rad(1000,300);
>> theta = -44.5:1:44.5;
>> whos deleta
>> whos delta
  Name       Size            Bytes  Class     Attributes

  delta      1x61              488  double              

>> whos theta
  Name       Size            Bytes  Class     Attributes

  theta      1x90              720  double              

>> delta = pi/4;
>> robs = bt2rad(1000,308);
>> robc = bt2rad(1000,308);
>> rc = rxsym(delta,psm,rho,robc,rx,theta);
>> whos rc
  Name      Size            Bytes  Class     Attributes

  rc        1x90              720  double              

>> figure
>> whos
  Name            Size              Bytes  Class              Attributes

  CR              1x1                   8  sym                          
  ans             1x2458             4916  char                         
  chr             1x504              1008  char                         
  delta           1x1                   8  double                       
  g               1x1                  32  function_handle              
  psm             1x1                   8  double                       
  r               1x1                   8  sym                          
  rc              1x90                720  double                       
  rdiff           1x1                   8  sym                          
  rfrac           1x1                   8  sym                          
  rfrac_simp      1x1                   8  sym                          
  rho             1x1                   8  double                       
  ro              1x1                   8  sym                          
  robc            1x1                   8  double                       
  robs            1x1                   8  double                       
  rx              1x1                   8  double                       
  theta           1x90                720  double                       

>> plot(rad2deg(theta),rc)
>> theta

theta =

  Columns 1 through 10

  -44.5000  -43.5000  -42.5000  -41.5000  -40.5000  -39.5000  -38.5000  -37.5000  -36.5000  -35.5000

  Columns 11 through 20

  -34.5000  -33.5000  -32.5000  -31.5000  -30.5000  -29.5000  -28.5000  -27.5000  -26.5000  -25.5000

  Columns 21 through 30

  -24.5000  -23.5000  -22.5000  -21.5000  -20.5000  -19.5000  -18.5000  -17.5000  -16.5000  -15.5000

  Columns 31 through 40

  -14.5000  -13.5000  -12.5000  -11.5000  -10.5000   -9.5000   -8.5000   -7.5000   -6.5000   -5.5000

  Columns 41 through 50

   -4.5000   -3.5000   -2.5000   -1.5000   -0.5000    0.5000    1.5000    2.5000    3.5000    4.5000

  Columns 51 through 60

    5.5000    6.5000    7.5000    8.5000    9.5000   10.5000   11.5000   12.5000   13.5000   14.5000

  Columns 61 through 70

   15.5000   16.5000   17.5000   18.5000   19.5000   20.5000   21.5000   22.5000   23.5000   24.5000

  Columns 71 through 80

   25.5000   26.5000   27.5000   28.5000   29.5000   30.5000   31.5000   32.5000   33.5000   34.5000

  Columns 81 through 90

   35.5000   36.5000   37.5000   38.5000   39.5000   40.5000   41.5000   42.5000   43.5000   44.5000

>> thetar = deg2rad(theta)

thetar =

  Columns 1 through 10

   -0.7767   -0.7592   -0.7418   -0.7243   -0.7069   -0.6894   -0.6720   -0.6545   -0.6370   -0.6196

  Columns 11 through 20

   -0.6021   -0.5847   -0.5672   -0.5498   -0.5323   -0.5149   -0.4974   -0.4800   -0.4625   -0.4451

  Columns 21 through 30

   -0.4276   -0.4102   -0.3927   -0.3752   -0.3578   -0.3403   -0.3229   -0.3054   -0.2880   -0.2705

  Columns 31 through 40

   -0.2531   -0.2356   -0.2182   -0.2007   -0.1833   -0.1658   -0.1484   -0.1309   -0.1134   -0.0960

  Columns 41 through 50

   -0.0785   -0.0611   -0.0436   -0.0262   -0.0087    0.0087    0.0262    0.0436    0.0611    0.0785

  Columns 51 through 60

    0.0960    0.1134    0.1309    0.1484    0.1658    0.1833    0.2007    0.2182    0.2356    0.2531

  Columns 61 through 70

    0.2705    0.2880    0.3054    0.3229    0.3403    0.3578    0.3752    0.3927    0.4102    0.4276

  Columns 71 through 80

    0.4451    0.4625    0.4800    0.4974    0.5149    0.5323    0.5498    0.5672    0.5847    0.6021

  Columns 81 through 90

    0.6196    0.6370    0.6545    0.6720    0.6894    0.7069    0.7243    0.7418    0.7592    0.7767

>> rc = rxsym(delta,psm,rho,robc,rx,thetar);
>> plot(theta,rc)
>> plot(theta,rc./rx)
>> plot(theta,1-rc./rx)
>> hold on;
>> psm = 0;
>> rc = rxsym(delta,psm,rho,robc,rx,thetar);
>> plot(theta,1-rc./rx)
>> rx = bt2rad(1000,200);
>> psm = bt2rad(1000,260)

psm =

   47.2465

>> rc = rxsym(delta,psm,rho,robc,rx,thetar);
>> plot(theta,1-rc./rx)
>> dd = drdbt(1000,rx)

dd =

   3.4783e-65

>> whos rx
  Name      Size            Bytes  Class     Attributes

  rx        1x1                 8  double              

>> rx

rx =

    8.9535

>> rx = bt2rad(1000,300);
>> rx

rx =

   99.2409

>> dd = drdbt(1000,rx)

dd =

   8.7947e-04

>> rx = bt2rad(1000,200);
>> dd = drdbt(1000,rx)

dd =

   3.4783e-65

>> rc = rxsym(delta,psm,rho,robc,rx,thetar);
>> plot(theta,1-rc./rx)
>> dbt = (rx-rc)./dd;
>> whos dbt
  Name      Size            Bytes  Class     Attributes

  dbt       1x90              720  double              

>> figure
>> plot(dbt)
>> plot(rx-rc)
>> rc = rxsym(delta,psm,rho,robc,rx,thetar);
>> psm

psm =

   47.2465

>> rho

rho =

    0.0100

>> robc

robc =

  112.5306

>> thetar

thetar =

  Columns 1 through 10

   -0.7767   -0.7592   -0.7418   -0.7243   -0.7069   -0.6894   -0.6720   -0.6545   -0.6370   -0.6196

  Columns 11 through 20

   -0.6021   -0.5847   -0.5672   -0.5498   -0.5323   -0.5149   -0.4974   -0.4800   -0.4625   -0.4451

  Columns 21 through 30

   -0.4276   -0.4102   -0.3927   -0.3752   -0.3578   -0.3403   -0.3229   -0.3054   -0.2880   -0.2705

  Columns 31 through 40

   -0.2531   -0.2356   -0.2182   -0.2007   -0.1833   -0.1658   -0.1484   -0.1309   -0.1134   -0.0960

  Columns 41 through 50

   -0.0785   -0.0611   -0.0436   -0.0262   -0.0087    0.0087    0.0262    0.0436    0.0611    0.0785

  Columns 51 through 60

    0.0960    0.1134    0.1309    0.1484    0.1658    0.1833    0.2007    0.2182    0.2356    0.2531

  Columns 61 through 70

    0.2705    0.2880    0.3054    0.3229    0.3403    0.3578    0.3752    0.3927    0.4102    0.4276

  Columns 71 through 80

    0.4451    0.4625    0.4800    0.4974    0.5149    0.5323    0.5498    0.5672    0.5847    0.6021

  Columns 81 through 90

    0.6196    0.6370    0.6545    0.6720    0.6894    0.7069    0.7243    0.7418    0.7592    0.7767

>> rx

rx =

    8.9535

>> rc = rxsym(delta,psm,rho,robc,rx,thetar);
>> clf
>> plot(rc)
>> hold on;
>> plot(rx)
>> rx

rx =

    8.9535

>> plot((rx-rc)./rx)
>> clf
>> plot((rx-rc)./rx)
>> dd = drdbt(1000,rx)

dd =

   3.4783e-65

>> rx

rx =

    8.9535

>> dd = drdbt(1000,200)

dd =

    0.3223

>> dbt = (rx-rc)./dd;
>> plot(dbt)
>> hold on;
>> rx = bt2rad(1000,300);
>> rc = rxsym(delta,psm,rho,robc,rx,thetar);
>> dd = drdbt(1000,300)

dd =

    1.5997

>> dbt = (rx-rc)./dd;
>> hold on;
>> plot(dbt)
>> grid
>> clear
>> cd ~/Work/Airs/L1b_v7
>> %----------------------- DCCs --------------------

% Get DCC mtime
load('new_anom_sub','mtime');

addpath ~/Matlab

% Load in all DCC data
load full_dcc_stats

[chan_ab chan_a chan_b chan_l1b] = good_chan_ab(mtime);

ch = [chan_ab; chan_a; chan_b];
ch = sort(ch);

calprop = load('/asl/matlib/airs/cal_prop_lls');
load_fairs

% Not just for clear, general satzen vs scanang vs xtrack
load clear_satzen_scanang_vs_xtrack.mat

for xt = 1:3:88
   xti = (xt+2)/3;
   xsatzen(xti) = nanmean(satzen([xt xt+1 xt+2]));
   xscanang(xti) = nanmean(scanang([xt xt+1 xt+2]));
end

ch_ab_l1b = chan_l1b_from_chan_l1c(chan_ab);
ch_a_l1b = chan_l1b_from_chan_l1c(chan_a);
ch_b_l1b = chan_l1b_from_chan_l1c(chan_b);

% Get symmetric and asymmetric components of DCC trends (vs xtrack)
x = [ones(30,1) secd(xsatzen)' xscanang'];
for ch=1:2645;
   [b,bint,r,rint,stats] = regress(dbt_ang(ch,:)',x);
   allb(ch,:) = b;
   allbint(ch,:,:) = bint;
end
% Compute fit
dbt_ang_fit = allb(:,1) + allb(:,2).*x(:,2)' + allb(:,3).*x(:,3)';


%----------------------- DCCs --------------------
>> 
>> % Get DCC mtime
>> load('new_anom_sub','mtime');
>> 
>> addpath ~/Matlab
>> 
>> % Load in all DCC data
>> load full_dcc_stats

>> [chan_ab chan_a chan_b chan_l1b] = good_chan_ab(mtime);

>> ch = [chan_ab; chan_a; chan_b];
>> ch = sort(ch);
>> 
>> calprop = load('/asl/matlib/airs/cal_prop_lls');
>> load_fairs
>> 
>> % Not just for clear, general satzen vs scanang vs xtrack
>> load clear_satzen_scanang_vs_xtrack.mat
>> 
>> for xt = 1:3:88
   xti = (xt+2)/3;
   xsatzen(xti) = nanmean(satzen([xt xt+1 xt+2]));
   xscanang(xti) = nanmean(scanang([xt xt+1 xt+2]));
end
>> 
>> ch_ab_l1b = chan_l1b_from_chan_l1c(chan_ab);
>> ch_a_l1b = chan_l1b_from_chan_l1c(chan_a);
>> ch_b_l1b = chan_l1b_from_chan_l1c(chan_b);
>> 
>> % Get symmetric and asymmetric components of DCC trends (vs xtrack)
>> x = [ones(30,1) secd(xsatzen)' xscanang'];
>> for ch=1:2645;
   [b,bint,r,rint,stats] = regress(dbt_ang(ch,:)',x);
   allb(ch,:) = b;
   allbint(ch,:,:) = bint;
end
>> % Compute fit
>> dbt_ang_fit = allb(:,1) + allb(:,2).*x(:,2)' + allb(:,3).*x(:,3)';
>> 
>> 
>> whos
  Name                Size                      Bytes  Class       Attributes

  allb             2645x3                       63480  double                
  allbint          2645x3x2                    126960  double                
  anom_bt          6671x30x2645            4234750800  double                
  b                   3x1                          24  double                
  b_ang            2645x30x10                 6348000  double                
  b_angerr         2645x30                     634800  double                
  bint                3x2                          48  double                
  calprop             1x1                     7215026  struct                
  ch                  1x1                           8  double                
  ch_a_l1b          246x1                        1968  double                
  ch_ab_l1b        1193x1                        9544  double                
  ch_b_l1b          249x1                        1992  double                
  chan_a            246x1                        1968  double                
  chan_ab          1193x1                        9544  double                
  chan_b            249x1                        1992  double                
  chan_l1b         2314x1                       18512  double                
  dbt_ang          2645x30                     634800  double                
  dbt_ang_fit      2645x30                     634800  double                
  dbt_angerr       2645x30                     634800  double                
  f                2378x1                       19024  double                
  fairs            2645x1                       21160  double                
  mtime            6671x1                       53368  datetime              
  r                  30x1                         240  double                
  rint               30x2                         480  double                
  satzen              1x90                        720  double                
  scanang             1x90                        720  double                
  stats               1x4                          32  double                
  x                  30x3                         720  double                
  xsatzen             1x30                        240  double                
  xscanang            1x30                        240  double                
  xt                  1x1                           8  double                
  xti                 1x1                           8  double                

>> clf
>> plot(anom_bt(333,:,1100))
>> plot(nanmean(anom_bt(:,:,1100)))
>> plot(nanmean(anom_bt(1:1000,:,1100)))
>> plot(nanmean(anom_bt(1:2000,:,1100)))
>> plot(nanmean(anom_bt(1:3000,:,1100)))
>> plot(nanmean(anom_bt(1:4000,:,1100)))
>> plot(nanmean(anom_bt(1:5000,:,1100)))
>> plot(nanmean(anom_bt(1:6000,:,1100)))
>> plot(nanmean(anom_bt(1:3000,:,1100)))
>> hold on;
>> plot(nanmean(anom_bt(3000:6000,:,1100)))
>> clf
>> plot(nanmean(anom_bt(1:1000,:,1100)))
>> hol don;
Unrecognized function or variable 'hol'.
 
>> hold on;
>> plot(nanmean(anom_bt(10001:2000,:,1100)))
>> plot(nanmean(anom_bt(1001:2000,:,1100)))
>> plot(nanmean(anom_bt(2001:3000,:,1100)))
>> plot(nanmean(anom_bt(3001:4000,:,1100)))
>> plot(nanmean(anom_bt(4001:5000,:,1100)))
>> plot(nanmean(anom_bt(5001:6000,:,1100)))
>> fairs(1100)

ans =

   1.0197e+03

>> find(fairs > 1200,1)

ans =

        1460

>> fairs(1450)

ans =

   1.1951e+03

>> clf
>> plot(nanmean(anom_bt(1:1000,:,1450)))
>> hold on;
>> plot(nanmean(anom_bt(1001:2000,:,1450)))
>> plot(nanmean(anom_bt(2001:3000,:,1450)))
>> plot(nanmean(anom_bt(3001:4000,:,1450)))
>> plot(nanmean(anom_bt(4001:5000,:,1450)))
>> plot(nanmean(anom_bt(5001:6000,:,1450)))
>> clf
>> plot(anom_bt(:,5,1450)-anom_bt(:,15,1450))
>> plot(anom_bt(:,5,1450)-anom_bt(:,14,1450))
>> plot(smooth(anom_bt(:,5,1450)-anom_bt(:,14,1450),30,'loess'))
>> plot(smooth(anom_bt(:,5,1450)-anom_bt(:,14,1450),200,'loess'))
>> plot(smooth(anom_bt(:,5,1450)-anom_bt(:,13,1450),200,'loess'))
>> plot(smooth(anom_bt(:,5,1450)-anom_bt(:,13,1450),1000,'loess'))
>> plot(smooth(anom_bt(:,5,1450)-anom_bt(:,15,1450),1000,'loess'))
>> hold on;
>> plot(smooth(anom_bt(:,5,1000)-anom_bt(:,15,1000),1000,'loess'))
>> plot(smooth(anom_bt(:,5,1520)-anom_bt(:,15,1520),1000,'loess'))
>> plot(smooth(anom_bt(:,5,2600)-anom_bt(:,15,2600),1000,'loess'))
>> plot(smooth(anom_bt(:,1,2600)-anom_bt(:,30,2600),1000,'loess'))
>> plot(smooth(anom_bt(:,15,2600)-anom_bt(:,30,2600),1000,'loess'))
>> clear
>> %----------------------- Trends in clear asymmetry -----------------------
cg1 = load('clear_secant_all_angs');

x = [ones(30,1) secd(xsatzen)' xscanang'];

for ch=1:2645;
   [b,bint,r,rint,stats] = regress(cg1.dbt_ang(ch,:)',x);
   allbc(ch,:) = b;
   allbintc(ch,:,:) = bint;
end
% Compute fit
cg1.dbt_ang_fit = allbc(:,1) + allbc(:,2).*x(:,2)' + allbc(:,3).*x(:,3)';
%----------------------- Trends in clear asymmetry: Tom's theory -----------------------
% Get mean clear radiances vs scan angle
load('r_mean_clear_xtrack.mat');
btobs_clr = rad2bt(fairs,rmean');

%----------------------- Trends in clear asymmetry -----------------------
>> cg1 = load('clear_secant_all_angs');
>> 
>> x = [ones(30,1) secd(xsatzen)' xscanang'];
Unrecognized function or variable 'xsatzen'.
 
>> 
>> for ch=1:2645;
   [b,bint,r,rint,stats] = regress(cg1.dbt_ang(ch,:)',x);
   allbc(ch,:) = b;
   allbintc(ch,:,:) = bint;
end
Unrecognized function or variable 'x'.
 
>> % Compute fit
>> cg1.dbt_ang_fit = allbc(:,1) + allbc(:,2).*x(:,2)' + allbc(:,3).*x(:,3)';
Unrecognized function or variable 'allbc'.
 
>> %----------------------- Trends in clear asymmetry: Tom's theory -----------------------
>> % Get mean clear radiances vs scan angle
>> load('r_mean_clear_xtrack.mat');
>> btobs_clr = rad2bt(fairs,rmean');
Unrecognized function or variable 'fairs'.
 
>> 
>> load_fairs
>> %----------------------- Trends in clear asymmetry -----------------------
cg1 = load('clear_secant_all_angs');

x = [ones(30,1) secd(xsatzen)' xscanang'];

for ch=1:2645;
   [b,bint,r,rint,stats] = regress(cg1.dbt_ang(ch,:)',x);
   allbc(ch,:) = b;
   allbintc(ch,:,:) = bint;
end
% Compute fit
cg1.dbt_ang_fit = allbc(:,1) + allbc(:,2).*x(:,2)' + allbc(:,3).*x(:,3)';
%----------------------- Trends in clear asymmetry: Tom's theory -----------------------
% Get mean clear radiances vs scan angle
load('r_mean_clear_xtrack.mat');
btobs_clr = rad2bt(fairs,rmean');

%----------------------- Trends in clear asymmetry -----------------------
>> cg1 = load('clear_secant_all_angs');
>> 
>> x = [ones(30,1) secd(xsatzen)' xscanang'];
Unrecognized function or variable 'xsatzen'.
 
>> 
>> for ch=1:2645;
   [b,bint,r,rint,stats] = regress(cg1.dbt_ang(ch,:)',x);
   allbc(ch,:) = b;
   allbintc(ch,:,:) = bint;
end
Unrecognized function or variable 'x'.
 
>> % Compute fit
>> cg1.dbt_ang_fit = allbc(:,1) + allbc(:,2).*x(:,2)' + allbc(:,3).*x(:,3)';
Unrecognized function or variable 'allbc'.
 
>> %----------------------- Trends in clear asymmetry: Tom's theory -----------------------
>> % Get mean clear radiances vs scan angle
>> load('r_mean_clear_xtrack.mat');
>> btobs_clr = rad2bt(fairs,rmean');
>> 
>> whos
  Name              Size                   Bytes  Class     Attributes

  btobs_clr      2645x90                 1904400  double              
  cg1               1x1               3913542840  struct              
  ch                1x1                        8  double              
  f              2378x1                    19024  double              
  fairs          2645x1                    21160  double              
  rmean            90x2645               1904400  double              

>> cg1

cg1 = 

  struct with fields:

       anom_bt: [6152x30x2645 double]
         b_ang: [2645x30x10 double]
      b_angerr: [2645x30 double]
       dbt_ang: [2645x30 double]
    dbt_angerr: [2645x30 double]

>> clf
>> plot(nanmean(cg1.amon_bt(:,1:3,1180),2)-nanmean(cg1.amon_bt(:,27:30,1180),2))
Unrecognized field name "amon_bt".
 
>> plot(nanmean(cg1.anom_bt(:,1:3,1180),2)-nanmean(cg1.anom_bt(:,27:30,1180),2))
>> plot(smooth(nanmean(cg1.anom_bt(:,1:3,1180),2)-nanmean(cg1.anom_bt(:,27:30,1180),2),200,'loess'))
>> plot(smooth(nanmean(cg1.anom_bt(:,1:3,1180),2)-nanmean(cg1.anom_bt(:,27:30,1180),2),300,'loess'))
>> am = nanmean(cg1.anom_bt(:,:,1180),2);
>> whos am
  Name         Size            Bytes  Class     Attributes

  am        6152x1             49216  double              

>> plot(smooth(nanmean(cg1.anom_bt(:,1:3,1180),2)-nanmean(cg1.anom_bt(:,27:30,1180),2) - am,300,'loess'))
>> hold on;
>> fairs(1180)

ans =

   1.0561e+03

>> format bank
>> fairs(1180)

ans =

       1056.08

>> find(fairs > 1200,1)

ans =

       1460.00

>> fairs(1455)

ans =

       1197.68

>> ch=1455;
>> am = nanmean(cg1.anom_bt(:,:,ch),2);plot(smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,300,'loess'))
>> am = nanmean(cg1.anom_bt(:,:,ch),2);plot(smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,14:16,ch),2) - am,300,'loess'))
>> 
>> ch=1400;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,300,'loess'))
>> clf
>> ch=1400;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,300,'loess'))
>> ch=1300;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,300,'loess'))
>> ch=1200;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,300,'loess'))
>> ch=1100;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,300,'loess'))
>> ch=100;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,300,'loess'))
>> ch=1520;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,300,'loess'))
>> ch=1540;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,300,'loess'))
>> cg_mtime = load('mtime_for_bias_clear.mat');
>> ch=1540;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(ch_mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,300,'loess'))
Unrecognized function or variable 'ch_mtime'.
 
>> ch=1540;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(cg_mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,300,'loess'))
Error using plot
Invalid data argument.
 
>> whos ch_mtime
>> whos 
  Name              Size                   Bytes  Class     Attributes

  am             6152x1                    49216  double              
  ans               1x1                        8  double              
  btobs_clr      2645x90                 1904400  double              
  cg1               1x1               3913542840  struct              
  cg_mtime          1x1                    49384  struct              
  ch                1x1                        8  double              
  f              2378x1                    19024  double              
  fairs          2645x1                    21160  double              
  rmean            90x2645               1904400  double              

>> cg_mtime

cg_mtime = 

  struct with fields:

    mtime: [6152x1 datetime]

>> mtime = cg_mtime.mtime;
>> ch=1540;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,300,'loess'))
>> grid
>> ch=1540;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,100,'loess'))
>> ch=1440;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,100,'loess'))
>> ch=1440;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,200,'loess'))
>> ch=1240;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,200,'loess'))
>> ch=2600;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,200,'loess'))
>> ch=2000;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,200,'loess'))
>> fairs(2000)

ans =

       1502.81

>> find(fairs> 800,1)

ans =

        512.00

>> ch=512;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,200,'loess'))
>> ch=612;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,200,'loess'))
>> ch=712;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,200,'loess'))
>> ch=812;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,200,'loess'))
>> ch=912;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,200,'loess'))
>> ch=1012;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,200,'loess'))
>> fairs(1012)

ans =

        982.01

>> fairs(1112)

ans =

       1025.11

>> ch=1112;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,200,'loess'))
>> ch=1112;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,100,'loess'))
>> grid
>> ch=1212;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,100,'loess'))
>> ch=1212;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,200,'loess'))
>> fairs(1212)

ans =

       1071.51

>> fairs(1312)

ans =

       1122.60

>> ch=1312;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,200,'loess'))
>> ch=1412;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,200,'loess'))
>> fairs(1412)

ans =

       1175.24

>> fairs(1452)

ans =

       1196.11

>> ch=1452;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,200,'loess'))
>> grid
>> ch=1452;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,20,'loess'))
>> ch=1452;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,100,'loess'))
>> ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,100,'loess'))
>> ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,27:30,ch),2) - am,100,'loess'))
>> hold on;
>> 
>> ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2) - am,100,'loess'))
>> ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,14:16,ch),2) - am,100,'loess'))
>> clf
>> ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,14:16,ch),2) - am,100,'loess'))
>> ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1,ch),2) - am,100,'loess'))
>> ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,2,ch),2) - am,100,'loess'))
>> xt = 3;
>> ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'))
>> xt=4;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'))
>> xt=5;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'))
>> xt=6;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'))
>> xt=7;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'))
>> xt=7;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=8;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=9;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=10;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=11;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=12;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=13;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=14;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=15;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=16;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=17;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=18;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=19;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=20;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=21;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=22;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=23;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=24;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=25;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=26;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=27;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=28;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=29;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> xt=30;ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,xt,ch),2) - am,100,'loess'));ylim([-0.3 0.3])
>> ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,100,'loess'))
>> hold on;
>> ch=1462;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,14:16,ch),2) - am,100,'loess'))
>> find(fairs>900,1)

ans =

        795.00

>> ch=795;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,14:16,ch),2) - am,100,'loess'))
>> clf
>> ch=795;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,14:16,ch),2) - am,100,'loess'))
>> cg1

cg1 = 

  struct with fields:

       anom_bt: [6152x30x2645 double]
         b_ang: [2645x30x10 double]
      b_angerr: [2645x30 double]
       dbt_ang: [2645x30 double]
    dbt_angerr: [2645x30 double]

>> clf
>> plot(fairs,nanmean(cg1.dbt_ang,2))
>> grid
>> clf
>> ch=795;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,14:16,ch),2) - am,100,'loess'))
>> ch=200;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,14:16,ch),2) - am,100,'loess'))
>> ch=100;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,14:16,ch),2) - am,100,'loess'))
>> ch=10;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,100,'loess'))
>> ch=10;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,100,'loess'))
>> ch=1;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,100,'loess'))
>> find(fairs > 2350,1)

ans =

       2341.00

>> ch=2341;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,100,'loess'))
>> ch=2381;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,100,'loess'))
>> fairs(2381)

ans =

       2389.13

>> ch=2384;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,100,'loess'))
>> hold on;
>> faris(2384)
Unrecognized function or variable 'faris'.
 
>> fairs(2384)

ans =

       2392.07

>> find(fairs> 2420,1)

ans =

       2413.00

>> hold on;
>> ch=2413;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,100,'loess'))
>> ch=1540;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,100,'loess'))
>> figure
>> find(fairs> 1600,1)

ans =

       2144.00

>> ch=2144;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,100,'loess'))
>> ch=2145;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,100,'loess'))
>> ch=2146;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,100,'loess'))
>> ch=1513;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,100,'loess'))
>> ch=2600;am = nanmean(cg1.anom_bt(:,:,ch),2);plot(mtime,smooth(nanmean(cg1.anom_bt(:,1:3,ch),2)-nanmean(cg1.anom_bt(:,27:30,ch),2) - am,100,'loess'))
>> cg1

cg1 = 

  struct with fields:

       anom_bt: [6152x30x2645 double]
         b_ang: [2645x30x10 double]
      b_angerr: [2645x30 double]
       dbt_ang: [2645x30 double]
    dbt_angerr: [2645x30 double]

>> plot(fairs,cg1.b_ang(:,:,1))
>> plot(fairs,cg1.b_ang(:,:,2))
>> plot(fairs,cg1.dbt_ang(:,:,1))
>> clf
>> plot(fairs,cg1.dbt_ang(:,:,1))
>> hol don;
Unrecognized function or variable 'hol'.
 
>> hold on;
>> plot(fairs,cg1.dbt_angerr(:,:,1))
>> clf
>> plot(fairs,cg1.dbt_ang(:,1,1))
>> hold on;
>> plot(fairs,cg1.dbt_ang(:,30,1))
>> plot(fairs,cg1.dbt_ang(:,15,1))
>> clf
>> plot(fairs,cg1.dbt_ang(:,1,1)-cg1.dbt_ang(:,30,1))
>> plot(fairs,cg1.dbt_ang(:,1,1)-cg1.dbt_ang(:,15,1))
>> plot(fairs,cg1.dbt_ang(:,1,1)-cg1.dbt_ang(:,30,1))
>> plot(fairs,cg1.dbt_ang(:,1,1)-cg1.dbt_ang(:,15,1))
>> plot(fairs,cg1.dbt_ang(:,1,1)-cg1.dbt_ang(:,30,1))
>> plot(fairs,cg1.dbt_ang(:,15,1)-cg1.dbt_ang(:,30,1))
>> cg1

cg1 = 

  struct with fields:

       anom_bt: [6152x30x2645 double]
         b_ang: [2645x30x10 double]
      b_angerr: [2645x30 double]
       dbt_ang: [2645x30 double]
    dbt_angerr: [2645x30 double]

>> clf
>> plot(fairs,rad2bt(fairs,cg1.b_ang(:,1,1)))
>> hold on;
>> plot(fairs,rad2bt(fairs,cg1.b_ang(:,15,1)))
>> plot(fairs,rad2bt(fairs,cg1.b_ang(:,30,1)))
>> clf
>> plot(fairs,rad2bt(fairs,cg1.b_ang(:,30,1))-rad2bt(fairs,cg1.b_ang(:,15,1)))
>> grid
>> hold on;
>> plot(fairs,rad2bt(fairs,cg1.b_ang(:,30,1))-rad2bt(fairs,cg1.b_ang(:,14,1)))
>> whos
  Name              Size                   Bytes  Class       Attributes

  am             6152x1                    49216  double                
  ans               1x1                        8  double                
  btobs_clr      2645x90                 1904400  double                
  cg1               1x1               3913542840  struct                
  cg_mtime          1x1                    49384  struct                
  ch                1x1                        8  double                
  f              2378x1                    19024  double                
  fairs          2645x1                    21160  double                
  mtime          6152x1                    49216  datetime              
  rmean            90x2645               1904400  double                
  xt                1x1                        8  double                

>> figure
>> cg1

cg1 = 

  struct with fields:

       anom_bt: [6152x30x2645 double]
         b_ang: [2645x30x10 double]
      b_angerr: [2645x30 double]
       dbt_ang: [2645x30 double]
    dbt_angerr: [2645x30 double]

>> y = squeeze(cg1.anom_bt(:,:,1200)-cg1.anom_bt(:,:,1520));
>> whos y
  Name         Size              Bytes  Class     Attributes

  y         6152x30            1476480  double              

>> imagesc(y)
>> colorbar
>> colormap(llsmap5)
Unrecognized function or variable 'llsmap5'.
 
>> load ~/Matlab/Cmaps/llsmap5
>> colormap(llsmap5)
>> ys = smoothn(y);
Warning: S = 9.777e-04: the lower bound for S has been reached. Put S as an input variable if required. 
> In smoothn (line 502) 
>> imagesc(ys)
>> ys = smoothn(y,2);
>> imagesc(ys)
>> imagesc(y)
>> imagesc(ys)
>> colorbar
>> imagesc(y)
>> colorbar
>> caxis(([-2 2])
 caxis(([-2 2])
               |
Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check
for mismatched delimiters.
 
>> caxis([-2 2])
>> imagesc(ys)
>> colorbar
>> caxis([-2 2])
>> whos ys
  Name         Size              Bytes  Class     Attributes

  ys        6152x30            1476480  double              

>> imagesc(ys(:,1:15)-ys(:,16:30))
>> colorbar
>> caxis([-2 2])
>> ys = smoothn(y,10);
>> imagesc(ys)
>> imagesc(ys(:,1:15)-ys(:,16:30))
>> colorbar
>> caxis([-1 1])
>> plot(nanmean(ys(:,1:15)-ys(:,16:30)))
>> plot(nanmean(ys(:,:)))
>> plot(nanmean(y(:,:)))
>> plot(nanmean(ys(:,:)))
>> find(fairs> 800,1)

ans =

        512.00

>> find(fairs > 1200,1)

ans =

       1460.00

>> fairs(1430)

ans =

       1184.63

>> y = squeeze(cg1.anom_bt(:,:,1460)-cg1.anom_bt(:,:,1520));
>> ys = smoothn(y,10);
>> plot(nanmean(ys(:,:)))
>> hold on;
>> y = squeeze(cg1.anom_bt(:,:,1360)-cg1.anom_bt(:,:,1520));
>> ys = smoothn(y,10);
>> plot(nanmean(ys(:,:)))
>> y = squeeze(cg1.anom_bt(:,:,1460)-cg1.anom_bt(:,:,1520));
>> whos y
  Name         Size              Bytes  Class     Attributes

  y         6152x30            1476480  double              

>> plot(nanmean(y(1:3000,:)))
>> plot(nanmean(y(3000:6000,:)))
>> clf
>> plot(nanmean(y(1:3000,:)))
>> hold on;
>> plot(nanmean(y(3000:6000,:)))
>> whos y
  Name         Size              Bytes  Class     Attributes

  y         6152x30            1476480  double              

>> for i=1:30
ys(:,i) = smooth(y(:,i),200,'loess');
end
>> whos ys
  Name         Size              Bytes  Class     Attributes

  ys        6152x30            1476480  double              

>> clf
>> imagesc(ys)
>> colorbar
>> pcolor(mtime,1:30,ys')
>> shading flat
>> colorbar
>> caxis

ans =

         -0.04          0.14

>> caxis([-0.15 0.15])
>> y = squeeze(cg1.anom_bt(:,:,1360)-cg1.anom_bt(:,:,1520));
>> for i=1:30
ys2(:,i) = smooth(y(:,i),200,'loess');
end
>> figure
>> pcolor(mtime,1:30,ys')
>> shading flat
>> colormap(llsmap5)
>> caxis([-0.15 0.15])
>> pcolor(mtime,1:30,ys2')
>> shading flat
>> caxis([-0.15 0.15])
>> find(fairs> 1600,1)

ans =

       2144.00

>> y = squeeze(cg1.anom_bt(:,:,2144)-cg1.anom_bt(:,:,1520));
>> for i=1:30
ys3(:,i) = smooth(y(:,i),200,'loess');
end
figure
>> figure
>> pcolor(mtime,1:30,ys3')
>> shading flat
>> colormap(llsmap5)
>> caxis([-0.15 0.15])
>> caxis([-0.35 0.35])
>> caxis([-1.35 1.35])
>> colorbar
>> y = squeeze(cg1.anom_bt(:,:,1460));
>> y = squeeze(cg1.anom_bt(:,:,2144)-cg1.anom_bt(:,:,1520));
>> for i=1:30
ys4(:,i) = smooth(y(:,i),200,'loess');
end
y = squeeze(cg1.anom_bt(:,:,2144)-cg1.anom_bt(:,:,1520));
>> >> for i=1:30
 >> for i=1:30
 |
Invalid use of operator.
 
>> ys4(:,i) = smooth(y(:,i),200,'loess');
>> end
 end
 |
Error: Illegal use of reserved keyword "end".
 
>> for i=1:30
ys3(:,i) = smooth(y(:,i),200,'loess');
end
>> figure
>> figure(10);clf
>> pcolor(mtime,1:30,ys3')
>> shading flat
>> colorbar
>> whos ys3
  Name         Size              Bytes  Class     Attributes

  ys3       6152x30            1476480  double              

>> for i=1:6152
ys3a(i,:) = ys3(i,:)-nanmean(ys3(i,:)0;
 ys3a(i,:) = ys3(i,:)-nanmean(ys3(i,:)0;
                                      |
Invalid expression. Check for missing multiplication operator, missing or unbalanced delimiters, or
other syntax error. To construct matrices, use brackets instead of parentheses.
 
>> for i=1:6152
ys3a(i,:) = ys3(i,:)-nanmean(ys3(i,:));
end
>> pcolor(mtime,1:30,ys3a')
>> shading flat
>> colorbar
>> caxis([-1 1])
>> figure(8);
>> caxis([-0.1501 0.1501])
>> box on
>> set(gca,'layer','top')
>> find(fairs> 1010,1)

ans =

       1078.00

>> y = squeeze(cg1.anom_bt(:,:,1078)-cg1.anom_bt(:,:,1520));
for i=1:30
ys5(:,i) = smooth(y(:,i),200,'loess');
end
y = squeeze(cg1.anom_bt(:,:,1078)-cg1.anom_bt(:,:,1520));
>> for i=1:30
ys5(:,i) = smooth(y(:,i),200,'loess');
end
figure(1);clf;
figu>> re(1);clf;
>> pcolor(mtime,1:30,ys5')
>> shading flat
>> fairs(1078)

ans =

       1010.04

>> faris(1520)
Unrecognized function or variable 'faris'.
 
>> fairs(1520)

ans =

       1231.33

>> fairs(1078)

ans =

       1010.04

>> for i=1:6152
ys6a(i,:) = ys6(i,:)-nanmean(ys6(i,:));
end
>> pcolor(mtime,1:30,ys5a')
>> shading flat
>> ys5as = smoothn(ys5as,5);
Unrecognized function or variable 'ys5as'.
 
>> ys5as = smoothn(ys5a,5);
>> pcolor(mtime,1:30,ys5as')
>> shading flat
>> colorbnar
Unrecognized function or variable 'colorbnar'.
 
>> colorbar
>> caxis

ans =

         -0.14          0.20

>> caxis([-0.201 0.201])
>> figure(9)
>> colorbar
>> caxis([-0.1501 0.1501])
>> find(fairs > 871.5,1)

ans =

        709.00

>> y = squeeze(cg1.anom_bt(:,:,709)-cg1.anom_bt(:,:,1520));
for i=1:30
ys6(:,i) = smooth(y(:,i),200,'loess');
end
y = squeeze(cg1.anom_bt(:,:,709)-cg1.anom_bt(:,:,1520));
>> for i=1:30
ys6(:,i) = smooth(y(:,i),200,'loess');
end
>> for i=1:6152
ys6a(i,:) = ys6(i,:)-nanmean(ys6(i,:));
end
>> figure
>> ys6as = smoothn(ys6a,5);
>> pcolor(mtime,1:30,ys6as')
>> shading flat
>> colormap(llsmap5)
>> colorbar
>> caxis([-0.1501 0.1501])
>> caxis([-0.1701 0.1701])
>> caxis([-0.201 0.201])
>> whos ys6as
  Name          Size              Bytes  Class     Attributes

  ys6as      6152x30            1476480  double              

>> plot(nanmean(ys6as))
>> grid
>> r200 = bt2rad(1000,200);
>> r200

r200 =

          8.95

>> bt2rad(1000,308)/r200

ans =

         12.57

>> 1/ans

ans =

          0.08

>> rx
Unrecognized function or variable 'rx'.
 
>> dir pol*
No matches for pattern 'pol*'.
>> pwd

ans =

    '/Users/strow/Work/Airs/L1b_v7'

>> cd ../Memos/
>> lsd
drwxr-xr-x  25 strow  staff       800 Dec 18 11:19 cal_talk_dec1_2021
drwxr-xr-x  42 strow  staff      1344 Nov 18 15:36 Joao_l1bcal_memo
drwxr-xr-x   5 strow  staff       160 Oct  5 21:47 White_paper
drwxr-xr-x   8 strow  staff       256 Mar 18  2021 March18_2021_email
drwxr-xr-x  11 strow  staff       352 Jul 29  2020 Joao_hq_summary_july_2020
drwxr-xr-x   6 strow  staff       192 Jan 13  2020 Senior_review_2020
drwxr-xr-x   9 strow  staff       288 Jan  7  2020 Joao_Jan2020
drwxr-xr-x  15 strow  staff       480 Dec 10  2019 Joao_June2019
drwxr-xr-x  19 strow  staff       608 Nov  4  2019 Airs_cal_July2019
drwxr-xr-x   9 strow  staff       288 Jun 26  2019 Hha_June2019
drwxr-xr-x   8 strow  staff       256 Jun 11  2019 Joao_Feb2019
drwxr-xr-x   6 strow  staff       192 Dec 12  2018 Joao_Dec2018
drwxr-xr-x   8 strow  staff       256 Aug 15  2017 Dcc_memo
>> cd cal_talk_dec1_2021/
>> dir p*

Pagano_Rad_Cal_Status_211130.pdf     polarization_vs_scan_angle_bias.pdf  
polari_sym.m                         polarization_vs_scan_angle_bias.png  
polarization_vs_scan_angle_bias.fig  

>> polari_sym
 
ans =
 
((rx*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta - 2*theta) - (2*robc*cos(2*delta))/rx))/(rho*cos(delta - theta) + 1) - (rx*(rho*cos(2*delta) + 1) + psm*rho*(cos(2*delta) - (2*robc*cos(2*delta))/rx))/(rho*cos(delta) + 1))/rx
 
>> whos rx
  Name      Size            Bytes  Class    Attributes

  rx        1x1                 8  sym                

>> rx
 
rx =
 
rx
 
>> whos theta
  Name       Size            Bytes  Class    Attributes

  theta      1x1                 8  sym                

>> theta = -44.5:1:44.5;
>> whos theta
  Name       Size            Bytes  Class     Attributes

  theta      1x90              720  double              

>> 
delta = 0;  % V5 value
rho = -0.005;  % V5 value

f = 1000;
rx = bt2rad(f,300);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

atheta = -44.5:1:44.5;
theta = deg2rad(atheta)

r300 = rxsym(delta,psm,rho,robs,rx,atheta);



>> delta = 0;  % V5 value
>> rho = -0.005;  % V5 value
>> 
>> f = 1000;
>> rx = bt2rad(f,300);
>> psm = bt2rad(f,260);
>> robc = bt2rad(f,308);
>> 
>> atheta = -44.5:1:44.5;
>> theta = deg2rad(atheta)

theta =

  Columns 1 through 7

         -0.78         -0.76         -0.74         -0.72         -0.71         -0.69         -0.67

  Columns 8 through 14

         -0.65         -0.64         -0.62         -0.60         -0.58         -0.57         -0.55

  Columns 15 through 21

         -0.53         -0.51         -0.50         -0.48         -0.46         -0.45         -0.43

  Columns 22 through 28

         -0.41         -0.39         -0.38         -0.36         -0.34         -0.32         -0.31

  Columns 29 through 35

         -0.29         -0.27         -0.25         -0.24         -0.22         -0.20         -0.18

  Columns 36 through 42

         -0.17         -0.15         -0.13         -0.11         -0.10         -0.08         -0.06

  Columns 43 through 49

         -0.04         -0.03         -0.01          0.01          0.03          0.04          0.06

  Columns 50 through 56

          0.08          0.10          0.11          0.13          0.15          0.17          0.18

  Columns 57 through 63

          0.20          0.22          0.24          0.25          0.27          0.29          0.31

  Columns 64 through 70

          0.32          0.34          0.36          0.38          0.39          0.41          0.43

  Columns 71 through 77

          0.45          0.46          0.48          0.50          0.51          0.53          0.55

  Columns 78 through 84

          0.57          0.58          0.60          0.62          0.64          0.65          0.67

  Columns 85 through 90

          0.69          0.71          0.72          0.74          0.76          0.78

>> 
>> r300 = rxsym(delta,psm,rho,robs,rx,atheta);
Unrecognized function or variable 'robs'.
 
>> 
>> 
>> delta = 0;  % V5 value
rho = -0.005;  % V5 value

f = 1000;
rx = bt2rad(f,300);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

atheta = -44.5:1:44.5;
theta = deg2rad(atheta);

r300 = rxsym(delta,psm,rho,robc,rx,atheta);


delta = 0;  % V5 value
>> rho = -0.005;  % V5 value
>> 
>> f = 1000;
>> rx = bt2rad(f,300);
>> psm = bt2rad(f,260);
>> robc = bt2rad(f,308);
>> 
>> atheta = -44.5:1:44.5;
>> theta = deg2rad(atheta);
>> 
>> r300 = rxsym(delta,psm,rho,robc,rx,atheta);
>> 
>> 
>> whos r300
  Name      Size            Bytes  Class     Attributes

  r300      1x90              720  double              

>> figure
>> plot(atheta,r300,
 plot(atheta,r300,
                  |
Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check
for mismatched delimiters.
 
>> plot(atheta,r300,'+-')
>> r300 = rxsym(delta,psm,rho,robc,rx,theta);
>> plot(atheta,r300,'+-')
>> grid
>> plot(atheta,r300./min(r300),'+-')
>> plot(atheta,r300-min(r300),'+-')
>> deriv = drdbt(f,300);
>> deriv

deriv =

          1.60

>> dr = r300-min(r300);
>> dbt = deriv./dr;
>> plot(atheta,dbt,'+-')
>> dbt = !e-3*deriv./dr;
 dbt = !e-3*deriv./dr;
       |
Invalid use of operator.
 
>> dbt = 1E-3*deriv./dr;
>> clf
>> dbt = 1E-3*deriv./dr;
>> plot(dr)
>> min(r300)

ans =

         99.54

>> dbt = dr./deriv;
>> plot(atheta,dbt,'+-')
>> delta = 0;  % V5 value

f = 1000;
rx = bt2rad(f,300);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

atheta = -44.5:1:44.5;
theta = deg2rad(atheta);

r300 = rxsym(delta,psm,rho,robc,rx,atheta);


delta = 0;  % V5 value
>> 
>> f = 1000;
>> rx = bt2rad(f,300);
>> psm = bt2rad(f,260);
>> robc = bt2rad(f,308);
>> 
>> atheta = -44.5:1:44.5;
>> theta = deg2rad(atheta);
>> 
>> r300 = rxsym(delta,psm,rho,robc,rx,atheta);
>> 
>> 
>> dbt = dr./deriv;
>> polari_sym
>> plot(atheta,dbt,'+-')
>> 
atheta = -44.5:1:44.5;
theta = deg2rad(atheta);
delta = 0;  % V5 value
rho = -0.005;  % V5 value
f = 1000;
bx = 300;

rx = bt2rad(f,bx);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

rxfull = rxsym(delta,psm,rho,robc,rx,theta);


dr = rxfull-min(rxfull);
deriv = drdbt(f,bx);
dbt = dr./deriv;



>> atheta = -44.5:1:44.5;
>> theta = deg2rad(atheta);
>> delta = 0;  % V5 value
>> rho = -0.005;  % V5 value
>> f = 1000;
>> bx = 300;
>> 
>> rx = bt2rad(f,bx);
>> psm = bt2rad(f,260);
>> robc = bt2rad(f,308);
>> 
>> rxfull = rxsym(delta,psm,rho,robc,rx,theta);
>> 
>> 
>> dr = rxfull-min(rxfull);
>> deriv = drdbt(f,bx);
>> dbt = dr./deriv;
>> 
>> 
>> plot(atheta,dbt,'+-')
>> hold on;
>> 
atheta = -44.5:1:44.5;
theta = deg2rad(atheta);
delta = 0;  % V5 value
rho = -0.005;  % V5 value
f = 1000;
bx = 250;

rx = bt2rad(f,bx);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

rxfull = rxsym(delta,psm,rho,robc,rx,theta);


dr = rxfull-min(rxfull);
deriv = drdbt(f,bx);
dbt = dr./deriv;




>> atheta = -44.5:1:44.5;
>> theta = deg2rad(atheta);
>> delta = 0;  % V5 value
>> rho = -0.005;  % V5 value
>> f = 1000;
>> bx = 250;
>> 
>> rx = bt2rad(f,bx);
>> psm = bt2rad(f,260);
>> robc = bt2rad(f,308);
>> 
>> rxfull = rxsym(delta,psm,rho,robc,rx,theta);
>> 
>> 
>> dr = rxfull-min(rxfull);
>> deriv = drdbt(f,bx);
>> dbt = dr./deriv;
>> 
>> 
>> 
>> plot(atheta,dbt,'+-')
>> dr = rxfull - rx;
>> dbt = dr./deriv;
>> plot(atheta,dbt,'+-')
>> plot(atheta,dbt-min(bt),'+-')
Unrecognized function or variable 'bt'.
 
>> plot(atheta,dbt-min(dbt),'+-')
>> 
atheta = -44.5:1:44.5;
theta = deg2rad(atheta);
delta = 0;  % V5 value
rho = 0.005;  % V5 value
f = 1000;
bx = 250;

rx = bt2rad(f,bx);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

rxfull = rxsym(delta,psm,rho,robc,rx,theta);


dr = rxfull-min(rxfull);
deriv = drdbt(f,bx);
dbt = dr./deriv;



>> atheta = -44.5:1:44.5;
>> theta = deg2rad(atheta);
>> delta = 0;  % V5 value
>> rho = 0.005;  % V5 value
>> f = 1000;
>> bx = 250;
>> 
>> rx = bt2rad(f,bx);
>> psm = bt2rad(f,260);
>> robc = bt2rad(f,308);
>> 
>> rxfull = rxsym(delta,psm,rho,robc,rx,theta);
>> 
>> 
>> dr = rxfull-min(rxfull);
>> deriv = drdbt(f,bx);
>> dbt = dr./deriv;
>> 
>> 
>> dr = rxfull - rx;
>> dbt = dr./deriv;
>> plot(atheta,dbt-min(dbt),'+-')
>> 
f = 1000;
atheta = -44.5:1:44.5;
theta = deg2rad(atheta);
delta = 0;  % V5 value
rho = 0.005;  % V5 value

bx = 200;

rx = bt2rad(f,bx);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

rxfull = rxsym(delta,psm,rho,robc,rx,theta);

dr = rxfull-min(rxfull);
deriv = drdbt(f,bx);
dbt = dr./deriv;




>> f = 1000;
>> atheta = -44.5:1:44.5;
>> theta = deg2rad(atheta);
>> delta = 0;  % V5 value
>> rho = 0.005;  % V5 value
>> 
>> bx = 200;
>> 
>> rx = bt2rad(f,bx);
>> psm = bt2rad(f,260);
>> robc = bt2rad(f,308);
>> 
>> rxfull = rxsym(delta,psm,rho,robc,rx,theta);
>> 
>> dr = rxfull-min(rxfull);
>> deriv = drdbt(f,bx);
>> dbt = dr./deriv;
>> 
>> 
>> 
>> plot(atheta,dbt,'+-')
>> 
f = 1000;
atheta = -44.5:1:44.5;
theta = deg2rad(atheta);
delta = pi/4;  % V5 value
rho = 0.005;  % V5 value

bx = 200;

rx = bt2rad(f,bx);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

rxfull = rxsym(delta,psm,rho,robc,rx,theta);

dr = rxfull-min(rxfull);
deriv = drdbt(f,bx);
dbt = dr./deriv;




>> f = 1000;
>> atheta = -44.5:1:44.5;
>> theta = deg2rad(atheta);
>> delta = pi/4;  % V5 value
>> rho = 0.005;  % V5 value
>> 
>> bx = 200;
>> 
>> rx = bt2rad(f,bx);
>> psm = bt2rad(f,260);
>> robc = bt2rad(f,308);
>> 
>> rxfull = rxsym(delta,psm,rho,robc,rx,theta);
>> 
>> dr = rxfull-min(rxfull);
>> deriv = drdbt(f,bx);
>> dbt = dr./deriv;
>> 
>> 
>> 
>> plot(atheta,dbt,'+-')
>> clf
>> f = 1000;
atheta = -44.5:1:44.5;
theta = deg2rad(atheta);
delta = pi/4;  % V5 value
rho = 0.005;  % V5 value

bx = 210;

rx = bt2rad(f,bx);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

rxfull = rxsym(delta,psm,rho,robc,rx,theta);

dr = rxfull-min(rxfull);
deriv = drdbt(f,bx);
dbt = dr./deriv;



f = 1000;
>> atheta = -44.5:1:44.5;
>> theta = deg2rad(atheta);
>> delta = pi/4;  % V5 value
>> rho = 0.005;  % V5 value
>> 
>> bx = 210;
>> 
>> rx = bt2rad(f,bx);
>> psm = bt2rad(f,260);
>> robc = bt2rad(f,308);
>> 
>> rxfull = rxsym(delta,psm,rho,robc,rx,theta);
>> 
>> dr = rxfull-min(rxfull);
>> deriv = drdbt(f,bx);
>> dbt = dr./deriv;
>> 
>> 
>> 
>> plot(atheta,dbt,'+-')
>> hold on;
>> 
f = 1000;
atheta = -44.5:1:44.5;
theta = deg2rad(atheta);
delta = pi/4;  % V5 value
rho = 0.005;  % V5 value

bx = 300;

rx = bt2rad(f,bx);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

rxfull = rxsym(delta,psm,rho,robc,rx,theta);

dr = rxfull-min(rxfull);
deriv = drdbt(f,bx);
dbt = dr./deriv;




>> f = 1000;
>> atheta = -44.5:1:44.5;
>> theta = deg2rad(atheta);
>> delta = pi/4;  % V5 value
>> rho = 0.005;  % V5 value
>> 
>> bx = 300;
>> 
>> rx = bt2rad(f,bx);
>> psm = bt2rad(f,260);
>> robc = bt2rad(f,308);
>> 
>> rxfull = rxsym(delta,psm,rho,robc,rx,theta);
>> 
>> dr = rxfull-min(rxfull);
>> deriv = drdbt(f,bx);
>> dbt = dr./deriv;
>> 
>> 
>> 
>> plot(atheta,dbt,'+-')
>> hl = legend('210K','300K')

hl = 

  Legend (210K, 300K) with properties:

         String: {'210K'  '300K'}
       Location: 'northeast'
    Orientation: 'vertical'
       FontSize: 14.40
       Position: [0.76 0.81 0.13 0.10]
          Units: 'normalized'

  Use GET to show all properties

>> grid
>> title('\delta = \pi/4')
>> figure(9);
>> xl = xlim;
>> xlim([datetime(2002,9,1) datetime(2003,9,1)])
>> xlim(xl)
>> xlim([datetime(2002,9,1) datetime(2004,9,1)])
>> xlim(xl)
>> figure;pcolor(mtime,1:30,ys6as')
>> shading flat
>> colormap(llsmap5)
>> figure;pcolor(mtime,1:30,ys5as')
>> shading flat
>> colormap(llsmap5)
>> figure;pcolor(mtime,1:30,ys4as')
Unrecognized function or variable 'ys4as'.
 
>> figure;pcolor(mtime,1:30,ys3as')
Unrecognized function or variable 'ys3as'.
 
>> pcolor(mtime,1:30,ys3a')
>> shading flat
>> colormap(llsmap5)
>> pcolor(mtime,1:30,ys2a')
Unrecognized function or variable 'ys2a'.
 
>> pcolor(mtime,1:30,ysa')
Unrecognized function or variable 'ysa'.
 
>> pcolor(mtime,1:30,ys')
>> shading flat
>> caxis([-0.201 0.201])
>> caxis([-0.151 0.151])
>> colorbar
>> for i=1:6152
ysa(i,:) = ys(i,:)-nanmean(ys(i,:));
end
>> pcolor(mtime,1:30,ysa')
>> shading flat
>> caxis([-0.151 0.151])
>> for i=1:6152
ysa(i,:) = ys(i,:)-nanmean([ys(15,:) ys(16,:)]);
end
>> pcolor(mtime,1:30,ysa')
>> shading flat
>> colorbar
>> caxis([-0.151 0.151])
>> figure
>> whos ysa
  Name         Size              Bytes  Class     Attributes

  ysa       6152x30            1476480  double              

>> plot(mtime,nanmean(ysa,2))
>> plot(nanmean(ysa))
>> grid
>> figure
>> f = 1000;
atheta = -44.5:1:44.5;
theta = deg2rad(atheta);
delta = pi/2;  % V5 value
rho = 0.005;  % V5 value

bx = 300;

rx = bt2rad(f,bx);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

rxfull = rxsym(delta,psm,rho,robc,rx,theta);

dr = rxfull-min(rxfull);
deriv = drdbt(f,bx);
dbt = dr./deriv;


f = 1000;
>> atheta = -44.5:1:44.5;
>> theta = deg2rad(atheta);
>> delta = pi/2;  % V5 value
>> rho = 0.005;  % V5 value
>> 
>> bx = 300;
>> 
>> rx = bt2rad(f,bx);
>> psm = bt2rad(f,260);
>> robc = bt2rad(f,308);
>> 
>> rxfull = rxsym(delta,psm,rho,robc,rx,theta);
>> 
>> dr = rxfull-min(rxfull);
>> deriv = drdbt(f,bx);
>> dbt = dr./deriv;
>> 
>> 
>> plot(atheta,dbt,'+-')
>> f = 1000;
atheta = -44.5:1:44.5;
theta = deg2rad(atheta);
delta = -pi/2;  % V5 value
rho = 0.005;  % V5 value

bx = 300;

rx = bt2rad(f,bx);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

rxfull = rxsym(delta,psm,rho,robc,rx,theta);

dr = rxfull-min(rxfull);
deriv = drdbt(f,bx);
dbt = dr./deriv;



f = 1000;
>> atheta = -44.5:1:44.5;
>> theta = deg2rad(atheta);
>> delta = -pi/2;  % V5 value
>> rho = 0.005;  % V5 value
>> 
>> bx = 300;
>> 
>> rx = bt2rad(f,bx);
>> psm = bt2rad(f,260);
>> robc = bt2rad(f,308);
>> 
>> rxfull = rxsym(delta,psm,rho,robc,rx,theta);
>> 
>> dr = rxfull-min(rxfull);
>> deriv = drdbt(f,bx);
>> dbt = dr./deriv;
>> 
>> 
>> 
>> plot(atheta,dbt,'+-')
>> 
f = 1000;
atheta = -44.5:1:44.5;
theta = deg2rad(atheta);
delta = -pi/3;  % V5 value
rho = 0.002;  % V5 value

bx = 300;

rx = bt2rad(f,bx);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

rxfull = rxsym(delta,psm,rho,robc,rx,theta);

dr = rxfull-min(rxfull);
deriv = drdbt(f,bx);
dbt = dr./deriv;




>> f = 1000;
>> atheta = -44.5:1:44.5;
>> theta = deg2rad(atheta);
>> delta = -pi/3;  % V5 value
>> rho = 0.002;  % V5 value
>> 
>> bx = 300;
>> 
>> rx = bt2rad(f,bx);
>> psm = bt2rad(f,260);
>> robc = bt2rad(f,308);
>> 
>> rxfull = rxsym(delta,psm,rho,robc,rx,theta);
>> 
>> dr = rxfull-min(rxfull);
>> deriv = drdbt(f,bx);
>> dbt = dr./deriv;
>> 
>> 
>> 
>> plot(atheta,dbt,'+-')
>> delta

delta =

         -1.05

>> rad2deg(delta)

ans =

        -60.00

>> fairs(1000)

ans =

        977.08

>> fairs(1460)

ans =

       1200.29

>> fairs(1459)

ans =

       1199.76

>> delta

delta =

         -1.05

>> %----------------------- DCCs --------------------

% Get DCC mtime
load('new_anom_sub','mtime');

addpath ~/Matlab

% Load in all DCC data
load full_dcc_stats


%----------------------- DCCs --------------------
>> 
>> % Get DCC mtime
>> load('new_anom_sub','mtime');
Error using load
Unable to read file 'new_anom_sub'. No such file or directory.
 
>> 
>> addpath ~/Matlab
>> 
>> % Load in all DCC data
>> load full_dcc_stats
Error using load
Unable to read file 'full_dcc_stats'. No such file or directory.
 
>> 
>> 
>> pwd

ans =

    '/Users/strow/Work/Airs/Memos/cal_talk_dec1_2021'

>> cd ../../L1b_v7
>> %----------------------- DCCs --------------------

% Get DCC mtime
load('new_anom_sub','mtime');

addpath ~/Matlab

% Load in all DCC data
load full_dcc_stats


%----------------------- DCCs --------------------
>> 
>> % Get DCC mtime
>> load('new_anom_sub','mtime');
>> 
>> addpath ~/Matlab
>> 
>> % Load in all DCC data
>> load full_dcc_stats
>> 
>> 
>> whos
  Name               Size                      Bytes  Class                                  Attributes

  CR                 1x1                           8  sym                                              
  am              6152x1                       49216  double                                           
  anom_bt         6671x30x2645            4234750800  double                                           
  ans                1x47                         94  char                                             
  atheta             1x90                        720  double                                           
  b_ang           2645x30x10                 6348000  double                                           
  b_angerr        2645x30                     634800  double                                           
  btobs_clr       2645x90                    1904400  double                                           
  bx                 1x1                           8  double                                           
  cg1                1x1                  3913542840  struct                                           
  cg_mtime           1x1                       49384  struct                                           
  ch                 1x1                           8  double                                           
  dbt                1x90                        720  double                                           
  dbt_ang         2645x30                     634800  double                                           
  dbt_angerr      2645x30                     634800  double                                           
  delta              1x1                           8  double                                           
  deriv              1x1                           8  double                                           
  dr                 1x90                        720  double                                           
  f                  1x1                           8  double                                           
  fairs           2645x1                       21160  double                                           
  hl                 1x1                           8  matlab.graphics.illustration.Legend              
  i                  1x1                           8  double                                           
  llsmap5           64x3                        1536  double                                           
  mtime           6671x1                       53368  datetime                                         
  psm                1x1                           8  double                                           
  r                  1x1                           8  sym                                              
  r200               1x1                           8  double                                           
  r300               1x90                        720  double                                           
  rho                1x1                           8  double                                           
  rmean             90x2645                  1904400  double                                           
  ro                 1x1                           8  sym                                              
  robc               1x1                           8  double                                           
  rx                 1x1                           8  double                                           
  rxfull             1x90                        720  double                                           
  theta              1x90                        720  double                                           
  xl                 1x2                          56  datetime                                         
  xt                 1x1                           8  double                                           
  y               6152x30                    1476480  double                                           
  ys              6152x30                    1476480  double                                           
  ys2             6152x30                    1476480  double                                           
  ys3             6152x30                    1476480  double                                           
  ys3a            6152x30                    1476480  double                                           
  ys4             6152x30                    1476480  double                                           
  ys5             6152x30                    1476480  double                                           
  ys5a            6152x30                    1476480  double                                           
  ys5as           6152x30                    1476480  double                                           
  ys6             6152x30                    1476480  double                                           
  ys6a            6152x30                    1476480  double                                           
  ys6as           6152x30                    1476480  double                                           
  ysa             6152x30                    1476480  double                                           

>> pwd

ans =

    '/Users/strow/Work/Airs/L1b_v7'

>> whos -file full_dcc_stats
  Name               Size                      Bytes  Class     Attributes

  anom_bt         6671x30x2645            4234750800  double              
  b_ang           2645x30x10                 6348000  double              
  b_angerr        2645x30                     634800  double              
  dbt_ang         2645x30                     634800  double              
  dbt_angerr      2645x30                     634800  double              

>> figure
>> find(fairs> 1010,1)

ans =

       1078.00

>> imagesc(squeeze(anom_bt(:,:,1078)))
>> colormap(llsmap5)
>> colorbar
>> caxis([-1 1])
>> caxis([-4 4])
>> imagesc(squeeze(anom_bt(:,:,1078))-squeeze(anom_bt(:,:,1540)))
>> colorbar
>> caxis([-4 4])
>> yd = squeeze(anom_bt(:,:,1078))-squeeze(anom_bt(:,:,1540));
>> whos yd
  Name         Size              Bytes  Class     Attributes

  yd        6671x30            1601040  double              

>> yds = smoothm(yd,5)
Unrecognized function or variable 'smoothm'.
 
>> yds = smoothn(yd,5)

yds =

  Columns 1 through 7

         -0.69         -0.66         -0.63         -0.59         -0.55         -0.50         -0.47
         -0.56         -0.55         -0.55         -0.56         -0.56         -0.55         -0.53
         -0.42         -0.44         -0.46         -0.50         -0.55         -0.58         -0.57
         -0.33         -0.36         -0.39         -0.45         -0.50         -0.54         -0.54
         -0.25         -0.27         -0.29         -0.32         -0.36         -0.41         -0.42
         -0.19         -0.20         -0.20         -0.18         -0.20         -0.24         -0.26
         -0.18         -0.16         -0.12         -0.06         -0.03         -0.05         -0.08
         -0.15         -0.12         -0.06          0.02          0.07          0.06          0.01
         -0.10         -0.06         -0.00          0.07          0.12          0.11          0.07
         -0.06         -0.02          0.03          0.09          0.11          0.07          0.02
         -0.10         -0.07         -0.02          0.01         -0.01         -0.06         -0.12
         -0.17         -0.16         -0.13         -0.13         -0.17         -0.22         -0.27
         -0.21         -0.21         -0.19         -0.22         -0.26         -0.33         -0.40
         -0.13         -0.13         -0.14         -0.17         -0.22         -0.28         -0.36
         -0.01         -0.02         -0.04         -0.07         -0.11         -0.17         -0.24
          0.04          0.05          0.05          0.03         -0.00         -0.04         -0.11
          0.06          0.08          0.11          0.13          0.13          0.10          0.04
          0.01          0.04          0.11          0.18          0.24          0.25          0.22
         -0.03          0.03          0.12          0.23          0.35          0.41          0.41
         -0.01          0.05          0.15          0.28          0.42          0.50          0.52
          0.06          0.11          0.20          0.31          0.41          0.46          0.47
          0.05          0.08          0.13          0.20          0.25          0.27          0.24
         -0.03         -0.01          0.02          0.02          0.00         -0.03         -0.08
         -0.14         -0.12         -0.11         -0.13         -0.18         -0.24         -0.32
         -0.29         -0.27         -0.26         -0.28         -0.32         -0.39         -0.47
         -0.39         -0.37         -0.36         -0.36         -0.40         -0.45         -0.54
         -0.46         -0.46         -0.45         -0.45         -0.47         -0.51         -0.55
         -0.45         -0.45         -0.46         -0.48         -0.50         -0.52         -0.54
         -0.41         -0.42         -0.45         -0.48         -0.50         -0.50         -0.51
         -0.38         -0.39         -0.43         -0.47         -0.51         -0.54         -0.55
         -0.31         -0.31         -0.34         -0.41         -0.50         -0.56         -0.59
         -0.27         -0.28         -0.31         -0.36         -0.45         -0.52         -0.55
         -0.25         -0.25         -0.27         -0.31         -0.38         -0.44         -0.46
         -0.20         -0.21         -0.22         -0.24         -0.29         -0.32         -0.33
         -0.18         -0.18         -0.15         -0.14         -0.15         -0.17         -0.18
         -0.13         -0.12         -0.08         -0.03          0.00          0.00         -0.02
         -0.05         -0.05         -0.02          0.01          0.06          0.08          0.08
          0.08          0.06          0.04          0.03          0.05          0.06          0.08
          0.19          0.15          0.10          0.05          0.01          0.01          0.03
          0.34          0.27          0.17          0.07          0.00         -0.01         -0.00
          0.42          0.34          0.22          0.11          0.02         -0.02         -0.03
          0.41          0.35          0.25          0.14          0.03         -0.03         -0.06
          0.36          0.32          0.25          0.15          0.06         -0.01         -0.06
          0.39          0.35          0.28          0.19          0.09          0.01         -0.05
          0.39          0.36          0.29          0.20          0.12          0.04         -0.03
          0.32          0.29          0.23          0.17          0.11          0.06          0.02
          0.17          0.18          0.16          0.14          0.13          0.13          0.13
          0.05          0.07          0.09          0.12          0.16          0.21          0.25
          0.04          0.06          0.09          0.14          0.22          0.30          0.34
          0.11          0.12          0.16          0.22          0.29          0.36          0.40
          0.22          0.22          0.25          0.29          0.34          0.38          0.40
          0.35          0.34          0.34          0.35          0.37          0.39          0.40
          0.37          0.35          0.34          0.34          0.37          0.39          0.39
          0.29          0.27          0.24          0.24          0.29          0.34          0.38
          0.25          0.22          0.18          0.16          0.20          0.26          0.30
          0.23          0.21          0.16          0.14          0.15          0.19          0.20
          0.25          0.22          0.19          0.17          0.16          0.16          0.14
          0.27          0.24          0.23          0.21          0.18          0.14          0.09
          0.29          0.27          0.25          0.22          0.17          0.11          0.07
          0.27          0.26          0.23          0.19          0.12          0.05          0.03
          0.25          0.24          0.21          0.15          0.08          0.03          0.04
          0.20          0.20          0.15          0.10          0.04          0.01          0.06
          0.21          0.21          0.18          0.12          0.05          0.02          0.07
          0.23          0.21          0.18          0.14          0.09          0.06          0.12
          0.25          0.22          0.18          0.15          0.12          0.12          0.18
          0.27          0.21          0.17          0.14          0.14          0.16          0.22
          0.29          0.24          0.19          0.16          0.15          0.15          0.18
          0.31          0.28          0.24          0.21          0.19          0.17          0.17
          0.36          0.34          0.30          0.25          0.21          0.18          0.15
          0.41          0.41          0.35          0.29          0.24          0.19          0.14
          0.37          0.36          0.32          0.28          0.25          0.22          0.18
          0.30          0.28          0.25          0.22          0.23          0.23          0.21
          0.25          0.21          0.18          0.17          0.20          0.23          0.23
          0.25          0.22          0.18          0.18          0.20          0.23          0.25
          0.36          0.31          0.24          0.21          0.20          0.21          0.21
          0.45          0.40          0.33          0.29          0.26          0.22          0.19
          0.59          0.55          0.50          0.45          0.38          0.30          0.24
          0.72          0.70          0.66          0.60          0.51          0.41          0.33
          0.72          0.72          0.70          0.68          0.61          0.51          0.43
          0.67          0.69          0.72          0.72          0.67          0.59          0.50
          0.57          0.61          0.66          0.69          0.67          0.60          0.51
          0.40          0.45          0.53          0.59          0.61          0.58          0.51
          0.31          0.35          0.41          0.47          0.49          0.48          0.43
          0.31          0.34          0.39          0.43          0.44          0.40          0.35
          0.32          0.36          0.41          0.42          0.42          0.39          0.33
          0.26          0.31          0.36          0.37          0.38          0.37          0.32
          0.20          0.24          0.28          0.31          0.33          0.34          0.32
          0.12          0.16          0.19          0.24          0.29          0.35          0.36
          0.05          0.07          0.10          0.18          0.27          0.34          0.36
         -0.00         -0.01          0.02          0.11          0.23          0.31          0.35
         -0.08         -0.09         -0.09         -0.03          0.06          0.16          0.20
         -0.20         -0.20         -0.20         -0.15         -0.08         -0.02          0.01
         -0.35         -0.34         -0.33         -0.29         -0.25         -0.22         -0.21
         -0.43         -0.42         -0.40         -0.35         -0.32         -0.31         -0.31
         -0.41         -0.41         -0.38         -0.35         -0.33         -0.33         -0.35
         -0.39         -0.38         -0.39         -0.39         -0.40         -0.41         -0.42
         -0.33         -0.34         -0.37         -0.42         -0.46         -0.48         -0.48
         -0.31         -0.33         -0.37         -0.45         -0.50         -0.50         -0.47
         -0.32         -0.35         -0.41         -0.48         -0.52         -0.50         -0.44
         -0.39         -0.41         -0.45         -0.49         -0.50         -0.46         -0.38
         -0.52         -0.51         -0.51         -0.50         -0.46         -0.39         -0.29
         -0.63         -0.61         -0.58         -0.52         -0.44         -0.35         -0.25
         -0.62         -0.61         -0.57         -0.53         -0.47         -0.40         -0.31
         -0.50         -0.51         -0.50         -0.47         -0.44         -0.39         -0.35
         -0.39         -0.40         -0.39         -0.38         -0.36         -0.35         -0.33
         -0.29         -0.29         -0.27         -0.25         -0.24         -0.24         -0.25
         -0.20         -0.19         -0.15         -0.11         -0.09         -0.10         -0.13
         -0.13         -0.13         -0.09         -0.02          0.01          0.00         -0.05
         -0.15         -0.16         -0.12         -0.04          0.01          0.01         -0.04
         -0.21         -0.21         -0.17         -0.09         -0.02         -0.01         -0.05
         -0.25         -0.24         -0.21         -0.12         -0.06         -0.06         -0.13
         -0.19         -0.20         -0.19         -0.16         -0.15         -0.20         -0.29
         -0.12         -0.15         -0.18         -0.20         -0.24         -0.30         -0.39
         -0.01         -0.08         -0.16         -0.24         -0.32         -0.40         -0.50
          0.12          0.03         -0.10         -0.23         -0.33         -0.43         -0.53
          0.11          0.03         -0.10         -0.24         -0.35         -0.45         -0.55
         -0.09         -0.14         -0.23         -0.34         -0.43         -0.51         -0.59
         -0.29         -0.34         -0.41         -0.50         -0.56         -0.61         -0.66
         -0.44         -0.49         -0.57         -0.65         -0.70         -0.72         -0.74
         -0.58         -0.64         -0.72         -0.79         -0.83         -0.82         -0.82
         -0.78         -0.83         -0.89         -0.94         -0.97         -0.93         -0.91
         -0.90         -0.93         -0.96         -0.98         -0.99         -0.99         -0.98
         -0.90         -0.91         -0.92         -0.93         -0.96         -0.98         -0.99
         -0.73         -0.73         -0.74         -0.75         -0.79         -0.84      C-c C-c-0.19         -0.18         -0.17         -0.17         -0.18         -0.19

>>   C-c C-c
>>   C-c C-c
>>   C-c C-c
>>   C-c C-c
>>   C-c C-c
>>   C-c C-c
>>   C-c C-c
>>   C-c C-c
>> yds = smoothn(yd,5);
>> imagesc(yds)
>> colorbar
>> imagesc(yds')
>> whos yds
  Name         Size              Bytes  Class     Attributes

  yds       6671x30            1601040  double              

>> plot(nanmean(yds),'+-')
>> whos -file full_dcc_stats
  Name               Size                      Bytes  Class     Attributes

  anom_bt         6671x30x2645            4234750800  double              
  b_ang           2645x30x10                 6348000  double              
  b_angerr        2645x30                     634800  double              
  dbt_ang         2645x30                     634800  double              
  dbt_angerr      2645x30                     634800  double              

>> plot(fairs,dbt_ang)
>> grid
>> rho

rho =

          0.00

>> format 
>> rho

rho =

    0.0020

>> 
>> plot(squeeze(nanmean(amon_bt(:,:,1345))))
Unrecognized function or variable 'amon_bt'.
 
>> plot(squeeze(nanmean(anom_bt(:,:,1345))))
>> plot(squeeze(nanmean(anom_bt(:,:,1520))))
>> plot(squeeze(nanmean(anom_bt(:,:,1540))))
>> find(fairs > 871.5,1)

ans =

   709

>> plot(squeeze(nanmean(anom_bt(:,:,709))))
>> clf;plot(squeeze(nanmean(anom_bt(:,:,709))))

>> clf
>> plot(squeeze(nanmean(anom_bt(:,:,709))))
>> fairs(1345)

ans =

   1.1403e+03

>> imagesc(squeeze(nanmean(anom_bt)))
>> colorbar
>> caxis([-2 2])
>> caxis([-1 1])
>> pcolor(fairs,1:30,squeeze(nanmean(anom_bt)))
>> shading flat
>> caxis([-1 1])
>> colorbar
>> xlim([650 1630])
>> find(fairs > 1200,10
 find(fairs > 1200,10
                     |
Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check
for mismatched delimiters.
 
>> find(fairs > 1200,1)

ans =

        1460

>> fairs(1459)

ans =

   1.1998e+03

>> xlim([650 fairs(1459)])
>> format
>> format bank
>> fairs(1459)

ans =

       1199.76

>> fairs(1458)

ans =

       1199.24

>> find(fairs < 1190,1)

ans =

          1.00

>> find(fairs > 1190,1)

ans =

       1441.00

>> find(fairs > 1191,1)

ans =

       1443.00

>> figure
>> plot(diff(fairs),'+-')
>> grid
>> plot(diff(f),'+-')
>> whos f
  Name      Size            Bytes  Class     Attributes

  f         1x1                 8  double              

>> load_fairs
>> plot(diff(f),'+-')
>> f(1261)

ans =

       1136.09

>> f(1262)

ans =

       1136.64

>> f(1263)

ans =

       1216.98

>> l1b_chan_to_l1c(1262)
Unrecognized function or variable 'l1b_chan_to_l1c'.
 
>> chan_l1c_from_chan_l1b(1262)

ans =

       1338.00

>> xlim([650 fairs(1338)])
>> figure(20)
>> xlim([650 fairs(1338)])
>> figure(21)
>> whos bt_anom
>> whos anom_bt
  Name            Size                      Bytes  Class     Attributes

  anom_bt      6671x30x2645            4234750800  double              

>> plot(squeeze(anom_bt(:,30,10)))
>> plot(squeeze(anom_bt(:,30,1)))
>> plot(squeeze(anom_bt(:,:,10)))
>> plot(squeeze(nanmean(anom_bt(:,30,1338)))
 plot(squeeze(nanmean(anom_bt(:,30,1338)))
                                          |
Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check
for mismatched delimiters.
 
>> plot(squeeze(nanmean(anom_bt(:,30,1338))
 plot(squeeze(nanmean(anom_bt(:,30,1338))
                                         |
Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check
for mismatched delimiters.
 
>> plot(squeeze(nanmean(anom_bt(:,30,1338))))
>> plot(squeeze(anom_bt(:,30,1338)))
>> plot(squeeze(anom_bt(:,30,1338))-squeeze(anom_bt(:,15,1338)))
>> nanmean(squeeze(anom_bt(:,30,1338)))

ans =

          0.07

>> whos anom_bt
  Name            Size                      Bytes  Class     Attributes

  anom_bt      6671x30x2645            4234750800  double              

>> whos -file full_dcc_stats
  Name               Size                      Bytes  Class     Attributes

  anom_bt         6671x30x2645            4234750800  double              
  b_ang           2645x30x10                 6348000  double              
  b_angerr        2645x30                     634800  double              
  dbt_ang         2645x30                     634800  double              
  dbt_angerr      2645x30                     634800  double              

>> plot(fairs,squeeze(b_ang(:,30,1)))
>> hold on;
>> plot(fairs,squeeze(b_ang(:,15,1)))
>> plot(fairs,squeeze(b_ang(:,1,1)))
>> figure;pcolor(mtime,1:30,ysa')
Error using pcolor (line 61)
Matrix dimensions must agree.
 
>> whos mtime
  Name          Size            Bytes  Class       Attributes

  mtime      6671x1             53368  datetime              

>> figure(22)
>> plot(squeeze(nanmean(anom_bt(:,:,709))))
>> find(fairs > 1191,1)

ans =

       1443.00

>> fairs(1338)

ans =

       1136.63

>> plot(squeeze(nanmean(anom_bt(:,:,1338))))
>> figure
>> 
f = 1000;
atheta = -44.5:1:44.5;
theta = deg2rad(atheta);
delta = 0;  % V5 value
rho = 0.002;  % V5 value

bx = 210;

rx = bt2rad(f,bx);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

rxfull = rxsym(delta,psm,rho,robc,rx,theta);

dr = rxfull-min(rxfull);
deriv = drdbt(f,bx);
dbt = dr./deriv;





>> f = 1000;
>> atheta = -44.5:1:44.5;
>> theta = deg2rad(atheta);
>> delta = 0;  % V5 value
>> rho = 0.002;  % V5 value
>> 
>> bx = 210;
>> 
>> rx = bt2rad(f,bx);
>> psm = bt2rad(f,260);
>> robc = bt2rad(f,308);
>> 
>> rxfull = rxsym(delta,psm,rho,robc,rx,theta);
Unrecognized function or variable 'rxsym'.
 
>> 
>> dr = rxfull-min(rxfull);
>> deriv = drdbt(f,bx);
>> dbt = dr./deriv;
>> 
>> 
>> 
>> 
>> cd ~/Work/Airs/Memos/cal_talk_dec1_2021/
>> 
f = 1000;
atheta = -44.5:1:44.5;
theta = deg2rad(atheta);
delta = 0;  % V5 value
rho = 0.002;  % V5 value

bx = 210;

rx = bt2rad(f,bx);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

rxfull = rxsym(delta,psm,rho,robc,rx,theta);

dr = rxfull-min(rxfull);
deriv = drdbt(f,bx);
dbt = dr./deriv;





>> f = 1000;
>> atheta = -44.5:1:44.5;
>> theta = deg2rad(atheta);
>> delta = 0;  % V5 value
>> rho = 0.002;  % V5 value
>> 
>> bx = 210;
>> 
>> rx = bt2rad(f,bx);
>> psm = bt2rad(f,260);
>> robc = bt2rad(f,308);
>> 
>> rxfull = rxsym(delta,psm,rho,robc,rx,theta);
>> 
>> dr = rxfull-min(rxfull);
>> deriv = drdbt(f,bx);
>> dbt = dr./deriv;
>> 
>> 
>> 
>> 
>> plot(atheta,dbt)
>> f = 1000;
atheta = -44.5:1:44.5;
theta = deg2rad(atheta);
delta = pi/5;  % V5 value
rho = 0.002;  % V5 value

bx = 210;

rx = bt2rad(f,bx);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

rxfull = rxsym(delta,psm,rho,robc,rx,theta);

dr = rxfull-min(rxfull);
deriv = drdbt(f,bx);
dbt = dr./deriv;


f = 1000;
>> atheta = -44.5:1:44.5;
>> theta = deg2rad(atheta);
>> delta = pi/5;  % V5 value
>> rho = 0.002;  % V5 value
>> 
>> bx = 210;
>> 
>> rx = bt2rad(f,bx);
>> psm = bt2rad(f,260);
>> robc = bt2rad(f,308);
>> 
>> rxfull = rxsym(delta,psm,rho,robc,rx,theta);
>> 
>> dr = rxfull-min(rxfull);
>> deriv = drdbt(f,bx);
>> dbt = dr./deriv;
>> 
>> 
>> plot(atheta,dbt)
>> 
f = 1000;
atheta = -44.5:1:44.5;
theta = deg2rad(atheta);
delta = -pi/8;  % V5 value
rho = 0.002;  % V5 value

bx = 210;

rx = bt2rad(f,bx);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

rxfull = rxsym(delta,psm,rho,robc,rx,theta);

dr = rxfull-min(rxfull);
deriv = drdbt(f,bx);
dbt = dr./deriv;



>> f = 1000;
>> atheta = -44.5:1:44.5;
>> theta = deg2rad(atheta);
>> delta = -pi/8;  % V5 value
>> rho = 0.002;  % V5 value
>> 
>> bx = 210;
>> 
>> rx = bt2rad(f,bx);
>> psm = bt2rad(f,260);
>> robc = bt2rad(f,308);
>> 
>> rxfull = rxsym(delta,psm,rho,robc,rx,theta);
>> 
>> dr = rxfull-min(rxfull);
>> deriv = drdbt(f,bx);
>> dbt = dr./deriv;
>> 
>> 
>> plot(atheta,dbt)
>> 
f = 1000;
atheta = -44.5:1:44.5;
theta = deg2rad(atheta);
delta = -pi/8;  % V5 value
rho = -0.002;  % V5 value

bx = 210;

rx = bt2rad(f,bx);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

rxfull = rxsym(delta,psm,rho,robc,rx,theta);

dr = rxfull-min(rxfull);
deriv = drdbt(f,bx);
dbt = dr./deriv;





>> f = 1000;
>> atheta = -44.5:1:44.5;
>> theta = deg2rad(atheta);
>> delta = -pi/8;  % V5 value
>> rho = -0.002;  % V5 value
>> 
>> bx = 210;
>> 
>> rx = bt2rad(f,bx);
>> psm = bt2rad(f,260);
>> robc = bt2rad(f,308);
>> 
>> rxfull = rxsym(delta,psm,rho,robc,rx,theta);
>> 
>> dr = rxfull-min(rxfull);
>> deriv = drdbt(f,bx);
>> dbt = dr./deriv;
>> 
>> 
>> 
>> 
>> plot(atheta,dbt)
>> 
f = 1000;
atheta = -44.5:1:44.5;
theta = deg2rad(atheta);
delta = -pi/8;  % V5 value
rho = 0.002;  % V5 value

bx = 210;

rx = bt2rad(f,bx);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

rxfull = rxsym(delta,psm,rho,robc,rx,theta);

dr = rxfull-min(rxfull);
deriv = drdbt(f,bx);
dbt = dr./deriv;




>> f = 1000;
>> atheta = -44.5:1:44.5;
>> theta = deg2rad(atheta);
>> delta = -pi/8;  % V5 value
>> rho = 0.002;  % V5 value
>> 
>> bx = 210;
>> 
>> rx = bt2rad(f,bx);
>> psm = bt2rad(f,260);
>> robc = bt2rad(f,308);
>> 
>> rxfull = rxsym(delta,psm,rho,robc,rx,theta);
>> 
>> dr = rxfull-min(rxfull);
>> deriv = drdbt(f,bx);
>> dbt = dr./deriv;
>> 
>> 
>> 
>> plot(atheta,dbt)
>> pi/8

ans =

          0.39

>> 
f = 1000;
atheta = -44.5:1:44.5;
theta = deg2rad(atheta);
delta = 1;%-pi/8;  % V5 value
rho = 0.002;  % V5 value

bx = 210;

rx = bt2rad(f,bx);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

rxfull = rxsym(delta,psm,rho,robc,rx,theta);

dr = rxfull-min(rxfull);
deriv = drdbt(f,bx);
dbt = dr./deriv;



>> f = 1000;
>> atheta = -44.5:1:44.5;
>> theta = deg2rad(atheta);
>> delta = 1;%-pi/8;  % V5 value
>> rho = 0.002;  % V5 value
>> 
>> bx = 210;
>> 
>> rx = bt2rad(f,bx);
>> psm = bt2rad(f,260);
>> robc = bt2rad(f,308);
>> 
>> rxfull = rxsym(delta,psm,rho,robc,rx,theta);
>> 
>> dr = rxfull-min(rxfull);
>> deriv = drdbt(f,bx);
>> dbt = dr./deriv;
>> 
>> 
>> figure(23);hold on;
>> plot(atheta,dbt)
>> 
f = 1000;
atheta = -44.5:1:44.5;
theta = deg2rad(atheta);
delta = 1;%-pi/8;  % V5 value
rho = -0.002;  % V5 value

bx = 210;

rx = bt2rad(f,bx);
psm = bt2rad(f,260);
robc = bt2rad(f,308);

rxfull = rxsym(delta,psm,rho,robc,rx,theta);

dr = rxfull-min(rxfull);
deriv = drdbt(f,bx);
dbt = dr./deriv;



>> f = 1000;
>> atheta = -44.5:1:44.5;
>> theta = deg2rad(atheta);
>> delta = 1;%-pi/8;  % V5 value
>> rho = -0.002;  % V5 value
>> 
>> bx = 210;
>> 
>> rx = bt2rad(f,bx);
>> psm = bt2rad(f,260);
>> robc = bt2rad(f,308);
>> 
>> rxfull = rxsym(delta,psm,rho,robc,rx,theta);
>> 
>> dr = rxfull-min(rxfull);
>> deriv = drdbt(f,bx);
>> dbt = dr./deriv;
>> 
>> 
>> plot(atheta,dbt)
>> figure
>> imagesc(ysa)
>> colormap(llsmap5)
>> imagesc(ysa')
>> colorbar
>> caxis([-0.151 0.151])
>> whos ysa
  Name         Size              Bytes  Class     Attributes

  ysa       6152x30            1476480  double              

>> plot(ysa(:,30))
>> hold on;
>> plot(ysa(:,20))
>> plot(ysa(:,10))
>> plot(ysa(:,1))
>> plot(ysa(:,30)-ysa(:,15))
>> plot(ysa(:,30)-ysa(:,1))
>> clf
>> plot(ysa(:,30)-ysa(:,1))
>> cg1

cg1 = 

  struct with fields:

       anom_bt: [6152x30x2645 double]
         b_ang: [2645x30x10 double]
      b_angerr: [2645x30 double]
       dbt_ang: [2645x30 double]
    dbt_angerr: [2645x30 double]

>> figure
>> plot(squeeze(nanmean(cg1.anom_bt(:,20,1338)))
 plot(squeeze(nanmean(cg1.anom_bt(:,20,1338)))
                                              |
Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check
for mismatched delimiters.
 
>> plot(squeeze(nanmean(cg1.anom_bt(:,20,1338))))
>> plot(squeeze(nanmean(cg1.anom_bt(:,:,1338)),2)))
 plot(squeeze(nanmean(cg1.anom_bt(:,:,1338)),2)))
                                                |
Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check
for mismatched delimiters.
 
>> plot(squeeze(nanmean(cg1.anom_bt(:,:,1338)),2))
Error using squeeze
Too many input arguments.
 
>> plot(squeeze(nanmean(cg1.anom_bt(:,:,1338)2)))
 plot(squeeze(nanmean(cg1.anom_bt(:,:,1338)2)))
                                           |
Invalid expression. Check for missing multiplication operator, missing or unbalanced delimiters, or
other syntax error. To construct matrices, use brackets instead of parentheses.
 
>> plot(squeeze(nanmean(cg1.anom_bt(:,:,1338),2)))
>> plot(squeeze(cg1.anom_bt(:,1,1338)))
>> plot(squeeze(nanmean(cg1.anom_bt(:,:,1338),2)))
>> plot(squeeze(nanmean(cg1.anom_bt(:,:,1338))))
>> plot(squeeze(nanmean(cg1.anom_bt(1:100,:,1338))))
>> plot(squeeze(nanmean(cg1.anom_bt(1:600,:,1338))))
>> plot(squeeze(nanmean(cg1.anom_bt(1:2,:,1338))))
>> plot(squeeze(nanmean(cg1.anom_bt(5000:6000,:,1338))))
>> figure(9)
>> xlim([datetime(2002,9,1) datetime(2004,9,1)])
>> whos y
  Name         Size              Bytes  Class     Attributes

  y         6152x30            1476480  double              

>> xlim([datetime(2002,9,1) datetime(2005,9,1)])
>> xlim([datetime(2002,9,1) datetime(2006,9,1)])
>> xlim([datetime(2002,9,1) datetime(2008,9,1)])
>> xlim([datetime(2002,9,1) datetime(2011,9,1)])
>> xlim(xl)
>> whos y
  Name         Size              Bytes  Class     Attributes

  y         6152x30            1476480  double              

>> figure
>> imagesc(y')
>> imagesc(flipud(y))
>> imagesc(flipud(y'))
>> colormap(llsmap5)
>> colorbar
>> caxis([-2 2])
>> caxis([-1 1])
>> shading interp
>> imagesc(smoothn(flipud(y')))
Warning: S = 9.615e-04: the lower bound for S has been reached. Put S as an input variable if required. 
> In smoothn (line 502) 
>> imagesc(smoothn(flipud(y'))2)
 imagesc(smoothn(flipud(y'))2)
                            |
Invalid expression. Check for missing multiplication operator, missing or unbalanced delimiters, or
other syntax error. To construct matrices, use brackets instead of parentheses.
 
>> imagesc(smoothn(flipud(y')),2)
Warning: S = 9.615e-04: the lower bound for S has been reached. Put S as an input variable if required. 
> In smoothn (line 502) 
Error using image
Incorrect number of arguments.

Error in imagesc (line 52)
    hh = image(varargin{:}, 'CDataMapping', 'scaled');
 
>> imagesc(smoothn(flipud(y'),2))
>> xlim([0 500])
>> colorbar
>> caxis([-1 1])
>> close all
>> 