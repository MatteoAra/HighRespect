%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% DEVELOPMENTAL FUNCTION

function [out_xyz]=xyzmakerlin(pst,pend,nstep)

%pst=[-1.9516   0.0      -0.0658]; pend=[-1.9326  -0.2716   -0.0658]; nstep=5;
rad=sqrt( pst(1)^2 + pst(2)^2 + pst(3)^2 );
[th1,r1,z1]=cart2pol(pst(1),pst(2),pst(3));
[th2,r2,z2]=cart2pol(pend(1),pend(2),pend(3));


if rad2deg(th1)==180 && sign(rad2deg(th2))<0
    th=linspace(-rad2deg(th1),rad2deg(th2),nstep);
    r=linspace(r1,r2,nstep);
    z=linspace(z1,z2,nstep);
    [x,bufy,z]=pol2cart(-deg2rad(th),r,z);
    y=0.0+bufy;
else 
    th=linspace(rad2deg(th1),rad2deg(th2),nstep);
    r=linspace(r1,r2,nstep);
    z=linspace(z1,z2,nstep);
    [x,y,z]=pol2cart(deg2rad(th),r,z);
end

out_xyz=[x;y;z];

%plot3(pst(1),pst(2),pst(3),'*',pend(1),pend(2),pend(3),'*'); hold on
%plot3(x,y,z,'O','LineWidth',1.5);
%view(0,90)