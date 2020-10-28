%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                           User defined input
% Atoms should be consistent: No 1 is the centre of both clusters, atom 2 
% will move from its XYZ in cluster 1 to the XYZ of atom 2 in cluster 2, etc.
% 

initc=[0.000000  0.000000  0.000000
   0.0      0.0       1.9492
   0.0      0.0      -1.9492
   1.9516   0.0       0.0658
  -1.9516   0.0      -0.0658
  -0.0322   1.9544    0.0666
   0.0322  -1.9544   -0.0666
   0.0000   0.0000    3.1339
   0.0000   0.0000   -3.1339
   3.1284   0.0000    0.1055
  -3.1284   0.0000   -0.1055
  -0.0516   3.1348    0.1055
   0.0516  -3.1348   -0.1055];

finalc=[0.000000  0.000000  0.000000
   0.0000   0.0000    1.9492
   0.0000   0.0000   -1.9492
   1.9326   0.2716    0.0658
  -1.9326  -0.2716   -0.0658
   0.2424   1.9396    0.0666
   0.3016  -1.9313   -0.0666
   0.0000   0.0000    3.1339
   0.0000   0.0000   -3.1339
   3.0980   0.4354    0.1055
  -3.0980  -0.4354   -0.1055
   0.3888   3.1110    0.1055
   0.4838  -3.0976   -0.1055];


atomlist=char('Fe', 'C','C','C','C','C','C', 'N','N','N','N','N','N' );

nstep=30;

outfolder='tiltXYasimm'; 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

xyzparser;




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%              These lines can lead to serious consequences 
%               modify ONLY if you know what you are doing!

eval(['! mkdir ', outfolder] );
eval(['! copy job_* ', outfolder] );
eval(['! copy input_*.in ', outfolder] );
eval(['! copy structure_* ', outfolder] );
!del job_* structure_* input_*.in
