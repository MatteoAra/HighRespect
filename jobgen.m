%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This code generates a job request specific for the DLS cluster

function []=jobgen(num)

inpname=['job_',num2str(num)];
fileID=fopen(inpname,'w');

fprintf(fileID,'#!/bin/sh  \n');
fprintf(fileID,'#$ -cwd \n');
fprintf(fileID,'#$ -q medium.q  \n'); 
fprintf(fileID,'#$ -m ea  \n');
fprintf(fileID,'#$ -pe openmpi 20  \n'); 
fprintf(fileID,'#$ -l infiniband  \n');
fprintf(fileID,' \n');

fprintf(fileID,'module purge \n');
fprintf(fileID,'module load openmpi/3.1.3 \n'); 
fprintf(fileID,'module load orca \n');
call=['orca input_', num2str(num),'.in > input_',num2str(num),'_tddft.out \n'];
fprintf(fileID, call );

fclose(fileID);