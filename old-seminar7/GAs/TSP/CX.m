function [x2,y2]=CX(x1,y1,n)
[c,nrcicluri]=cicluri(x1,y1,n);
% ciclurile sunt construite la nivel de gene

% disp('Indecsii ciclurilor');
% disp(c);

x2=x1;y2=y1;

%ciclurile impare nu modifica alele, ciclurile pare le inverseaza
for t=2:2:nrcicluri
    for i=1:n
        if(c(i)==t)
            x2(i)=y1(i);
            y2(i)=x1(i);
        end;
    end;
end;

% disp('Permutarile rezultate');
% disp(x2);
% disp(y2);

end

function [c1,index]=cicluri(x1,y1,n)
% index - indicele ciclului curent; 
%de exemplu daca vor fi determinate in total 4 cicluri, index va ramane pe valoarea 4
index=1;continua=1;
% c1(i) - in ce ciclu se afla gena i=1...n
c1=zeros(1,n);

i=1;
%cat timp nu am atasat fiecarei gene un index de ciclu
while(continua)
    a1=x1(i); j=i;
   OK=1;
    % cat timp nu am ajuns la alela selectata initial 
    while(OK)
        a=y1(j);
        %cauta a in x1 - rezulta pozitia j
       [~,j]=ismember(a,x1);
        % seteaza gena j ca apartinand ciclului
        c1(j)=index;
        OK=a~=a1;
    end;
    continua=0;  
    for k=1:n
        % daca a ramas o gena k neconsultata - c(k)=0
        if(c1(k)==0)
            %initializeaza un ciclu  nou si selecteaza k drept gena initiala
            i=k;index=index+1;
            % cu noile date determina ciclul identificat prin index
            continua=1;
            break;
        end;
    end;
end;
end

