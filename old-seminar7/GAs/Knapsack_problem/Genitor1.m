function [Pop_rez] = Genitor1(Pop_curenta,Copii,ni)

%sunt inlocuiti cei mai slabi ni indivizi din Pop_curenta cu ni copii -
%copii care inlocuiesc parintii sunt cei mai buni posibili; daca ni>nrcopii
%sunt inlocuiti doar nrcopii parinti
[dim,m]=size(Pop_curenta);
[nrcopii,~]=size(Copii);
Pop=sortrows(Pop_curenta,m);
PopC=sortrows(Copii,m);
Pop_urm=Pop;
if(nrcopii>=ni)
    Pop_urm(1:ni,:)=PopC(nrcopii-ni+1:nrcopii,:);
else
    Pop_urm(1:nrcopii,:)=PopC(:,:);
end;

Pop_rez=Pop_urm;
%amestecarea indivizilor
% poz=gen_perm(dim);
% Pop_rez=zeros(dim,m);
% for i=1:dim
%     Pop_rez(i,:)=Pop_urm(poz(i),:);
% end;
    
end