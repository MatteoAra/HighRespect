% List of clusters

% Cu2+ in square planar coordination with Cu-O bond length 1.94 A
initc=[0.00000     0.00000     0.000000
1.37178     1.37178     0.000000
-1.37178     1.37178     0.000000
1.37178    -1.37178     0.000000
-1.37178    -1.37178     0.000000];

% Cu2+ in "perfect" tetrahedral coordination with Cu-O bond length 1.94 A
finalc=[0.0       0.0       0.0
1.1198    1.1198    1.1198
-1.1198    1.1198   -1.1198
1.1198   -1.1198   -1.1198
-1.1198   -1.1198    1.1198];

% Fe3+(CN)6 after relaxation
finalc=[-0.000000   -0.000000   -0.000000
       -0.806648    1.756841   -0.249438
        0.806648   -1.756841    0.249438
       -0.781033   -0.528383   -1.709957
        0.781034    0.528383    1.709957
       -1.615098   -0.563073    0.948462
        1.615098    0.563073   -0.948462
       -1.234740   -0.853663   -2.750985
        1.234741    0.853663    2.750985
       -1.313110    2.814964   -0.387275
        1.313109   -2.814964    0.387275
       -2.580869   -0.906854    1.535386
        2.580868    0.906854   -1.535386];
   
% Fe3+(CN)6 cluster extracted from diffraction data
initc=[ 0.000000    0.000000    0.000000
       -0.777399    1.750320   -0.230548
        0.777400   -1.750320    0.230549
       -0.797537   -0.544960   -1.682682
        0.797537    0.544960    1.682683
       -1.615079   -0.576160    0.916590
        1.615079    0.576160   -0.916589
       -1.249830   -0.859040   -2.690530
        1.249830    0.859040    2.690531
       -1.285729    2.771600   -0.388249
        1.285729   -2.771600    0.388250
       -2.555763   -0.916240    1.477751
        2.555763    0.916240   -1.477750];

% Fe3+(CN)6 cluster rebuild in cartesian and relaxed with ORCA
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

% Fe3+(CN)6 cluster rebuild in cartesian, relaxed with ORCA with non-symmetric 
% tilt of apical neighbours
finalc=[0.000000  0.000000  0.000000
   0.2393   0.2393    1.9196
   0.2393   0.2393   -1.9196
   1.9516   0.0       0.0658
  -1.9516   0.0      -0.0658
  -0.0322   1.9544    0.0666
   0.0322  -1.9544   -0.0666
   0.3848   0.3848    3.0863
   0.3848   0.3848   -3.0863
   3.1284   0.0000    0.1055
  -3.1284   0.0000   -0.1055
  -0.0516   3.1348    0.1055
   0.0516  -3.1348   -0.1055];