function [IDLivro]=Seletor(NomeDaImagem)
I = imread(NomeDaImagem);
IG = rgb2gray(I);
Ibw = ~im2bw(IG,graythresh(IG));
Ifill=imfill(Ibw,'holes');
SE = strel('rectangle',[200 200]);
Ifill = imerode(Ifill,SE);
[r,c] = find(Ifill);
imshow(I);
hold on;
stat = regionprops(Ifill,'boundingbox');
bb=stat(1).BoundingBox;
rectangle('Position',bb,'Edgecolor','r','LineWidth',2);
[Livro1_0]=AcharQuadrado(NomeDaImagem);
Descritores = momentosInvariantes(Livro1_0)';
load('network1.mat')
result= sim(network1,Descritores);

IDLivro=2*uint8(result(1,1)) + 1*uint8(result(2,1));

if(IDLivro==0)
title('Noite sem fim')
end
if(IDLivro==1)
title('Caçador de Sonhos')        
end        
if(IDLivro==2)
title('Livros da Magia')        
end        
if(IDLivro==3)
title('Nemesis')        
end
hold off;