%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% script designed for the automatic generation of input files for orca 
% This should be customised, depending on the kind of calculation required

function []=inputgen(num)

inpname=['input_',num2str(num),'.in'];
structurename=['structure_',num2str(num),'.xyz'];
fileID=fopen(inpname,'w');

fprintf(fileID,'! PBE0 Mulliken normalSCF def2-TZVP AutoAux ZORA RIJCOSX SlowConv \n');
fprintf(fileID,' \n');
fprintf(fileID,'%%scf \n maxiter 100 \n DIISMaxEq 20 \nend \n');
fprintf(fileID,'%%MaxCore 8192 \n');
fprintf(fileID,' \n');
fprintf(fileID,'%%method \n SpecialGridAtoms 16 \n SpecialGridIntAcc 7 \nend \n');
fprintf(fileID,' \n');
fprintf(fileID,'%%tddft \n orbwin[0]=0,0,-1,-1 \n orbwin[1]=0,0,-1,-1 \n nroots 200 \n maxdim 2000 \n DoQuad true \nend \n');
fprintf(fileID,' \n');

xyzstring=['* xyzfile -3 2 ', structurename, ' \n']; % Change here for charge and multiplicity!
fprintf(fileID,xyzstring); 

fprintf(fileID,' \n');
fprintf(fileID,'%%geom \n Constraints \n {	C	0	C	} \nend \nend \n ');

fclose(fileID);
