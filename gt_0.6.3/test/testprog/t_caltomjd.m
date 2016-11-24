function t_caltomjd
%-------------------------------------------------------------------------------
% �P�̎����J�����_����->MJD->�J�����_����
%-------------------------------------------------------------------------------
chkcaltomjd([1975,1,1,0,0,0]);
chkcaltomjd([2000,1,1,0,0,0]);
chkcaltomjd([2000,12,31,23,59,59.99999]);
chkcaltomjd([2000,2,29,23,59,59.99999]);
chkcaltomjd([2000,3,1,23,59,59.99999]);
chkcaltomjd([2001,2,28,23,59,59.99999]);
chkcaltomjd([2001,3,1,23,59,59.99999]);
chkcaltomjd([2020,11,30,23,59,59.99999]);

%-------------------------------------------------------------------------------
function chkcaltomjd(dt)
[mjd,sec]=caltomjd(dt);
disp(sprintf('[%04d/%02d/%02d %02d:%02d:%08.5f]->[%d,%f]',dt,mjd,sec));

dt=mjdtocal(mjd,sec);
disp(sprintf('[%d,%f]->[%04d/%02d/%02d %02d:%02d:%08.5f]',mjd,sec,dt));