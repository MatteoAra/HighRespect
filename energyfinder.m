%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                 Energy reader from orca-scf output
clear all

nsteps=39;

for index=1:nsteps 
    filename=['input_',num2str(index),'_tddft.out'];
    call= ['grep -C 3 "TOTAL SCF ENERGY" ', filename]; 
    [stat,cmdout]=system(call); 
    energySCF(index)=str2num(cmdout([145:158])); % Don't touch these indexes
    clear cmdout;
end

A=[(1:nsteps)' energySCF'];
save energySCF.dat -ascii A



for index=1:nsteps 
    filename=['input_',num2str(index),'_tddft.out'];
    call= ['grep -10 "TOTAL ENERGY" ', filename]; 
    [stat,cmdout]=system(call); 
    energyCIS(index)=str2num(cmdout([end-20:end])); % Don't touch these indexes
    clear cmdout;
end

B=[(1:nsteps)' energyCIS'];
save energyCIS.dat -ascii B

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%grep -C 10 "TOTAL ENERGY" input_1_tddft.out