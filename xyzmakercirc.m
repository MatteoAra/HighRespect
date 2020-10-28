%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [out_xyz]=xyzmakercirc(pst,pend,nstep)

%pst=[1.37178 1.37178 0.000000]; pend=[1.1198 1.1198 1.1198]; nstep=5;
rad=sqrt( pst(1)^2 + pst(2)^2 + pst(3)^2 );
[th1,fi1,r1]=cart2sph(pst(1),pst(2),pst(3));
[th2,fi2,r2]=cart2sph(pend(1),pend(2),pend(3));
if abs(r1-r2) >= 0.001, 
    display('WARNING! distance changing more than 0.001 Ang.');
end

if th1==th2,
    th=th1.*ones(1,nstep+1);
else
    th=th1:((th2-th1)/nstep):th2;
end

if fi1==fi2 
    fi=fi1.*ones(1,nstep+1);
else
    fi=fi1:((fi2-fi1)/nstep):fi2; 
end

if r1==r2 
    R=r1.*ones(1,nstep+1);
else
    R=r1:((r2-r1)/nstep):r2;
end

[x,y,z]=sph2cart(th,fi,R);
out_xyz=[x;y;z];

%plot3(pst(1),pst(2),pst(3),'*',pend(1),pend(2),pend(3),'*'); hold on
%plot3(x,y,z,'O','LineWidth',1.5);
%view(0,90)