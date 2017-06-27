function [Imagem,tamanho] = AcharQuadrado(a)
    I = imread(a);
    IG = rgb2gray(I);
    Ibw = ~im2bw(IG,graythresh(IG));
    Ifill=imfill(Ibw,'holes');
    SE = strel('rectangle',[200 200]);
    Ifill = imerode(Ifill,SE);
    [r,c] = find(Ifill);
    %mask = uint8(Ifill);
    %I = histeq(I);
    %final= I.*mask;
    Imagem = I(min(r):max(r), min(c):max(c));
    [x y] = size(Imagem);
    %Imagem = imresize(Imagem,[500 500]);
    tamanho = [x y];
    %Imagem = imresize(Imagem,[max(tamanho) max(tamanho)]);
    %for i=x:1500
    %    for j=y:1500
    %        Imagem(i,j)=uint8(0);
    %    end
    %end
    %proporcao = max(tamanho)/min(tamanho);
    %imshow(Imagem); 