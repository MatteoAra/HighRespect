function []=xyzgen(A,num,atomlist)

%A=finalc;
name=['structure_',num2str(num),'.xyz'];
fileID = fopen(name,'w');
fprintf(fileID,'%s %3.6f %3.6f %3.6f \r\n',atomlist(1,:),A(1,:));
for ind=2:size(A,1)
    fprintf(fileID,'%s %3.6f %3.6f %3.6f \r\n',atomlist(ind,:),A(ind,:));
end

fclose(fileID);