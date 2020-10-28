%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%at2=xyzmaker(initc(2,:),finalc(2,:),nstep);at3=xyzmaker(initc(3,:),finalc(3,:),nstep);
for ind=2:size(initc,1)
    eval(strcat('at',num2str(ind),'=xyzmakerlin2(initc(',num2str(ind),',:),finalc(',num2str(ind),',:),nstep);'));
end

% Calculating distance in between the steps and generating feedback!
buf=at4(:,2)-at4(:,1); diststep=sqrt(buf(1)^2+buf(2)^2+buf(3)^2);
fprintf('You are using a regular translation grid with step of %.4f Ang!\n', diststep);

% cycle for with dynamic construction of file with xyz of atomN at nstep
% and call to function xyzgen

for ind1=1:size(at2,2)
    if ind1==1 % Next line depends on the number of atoms in the cluster
        data=[finalc(1,:); at2(:,1)'; at3(:,1)'; at4(:,1)'; at5(:,1)'; at6(:,1)'; at7(:,1)'; at8(:,1)'; at9(:,1)'; at10(:,1)'; at11(:,1)'; at12(:,1)'; at13(:,1)'];
        xyzgen(data,ind1,atomlist);
        jobgen(ind1);
        inputgen(ind1);
    else
     data=finalc(1,:);  
      for ind2=2:size(finalc,1) 
          bufname=['at',num2str(ind2),'(:,',num2str(ind1), ')''']; 
          data=[data; eval(bufname)];
      end
     xyzgen(data,ind1,atomlist);
     jobgen(ind1);
     inputgen(ind1);
    end
end

