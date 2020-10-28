%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% macro for plotting HighRespect results

[buf,range]=system('! ls -l . | egrep -c ''.dat''' );

% I/O
for ind=1:str2num(range)
    inputname=['input_',num2str(ind),'_tddft.out.absq.dat'];
    eval(['dat_',num2str(ind),'=load(''',inputname,''');']);
end

% Here plot
for ind2=1:str2num(range)
    xx=eval(['dat_',num2str(ind2),'(:,1)']); 
    zz=eval(['dat_',num2str(ind2),'(:,2)']);
    yy=ones(size(xx)); hold on    
    plot3(xx,zz,ind2.*yy,'LineWidth',1.5); xlim([8974 8991]); ylim([0 10]);
end

view([0 30]);
set(gca,'Fontsize',18,'box','off'); 
xlabel('Energy (eV)'); ylabel('Intensity (arb. u.)');
set(gca,'ZTick',[]);
text(8986,0.2,0.2,'square-planar Cu^{2+}','Fontsize',14);
text(8986,15,0.2,'tetrahedral Cu^{2+}','Fontsize',14);