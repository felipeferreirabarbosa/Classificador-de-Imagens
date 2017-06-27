function Matriz = momentosInvariantes(Imagem)
    n20=0.0;
    n02=0.0;
    n11=0.0;
    n30=0.0;
    n12=0.0;
    n21=0.0;
    n03=0.0;
    n00=0.0;
    [x,y] = size(Imagem);
    xmed= x/2;
    ymed = y/2;
    for i =0:x-1
        for j = 0:y-1
            n20= n20 + ((i-xmed)^2)*(double(Imagem(i+1,j+1))); 
            n02= n02 + ((j-ymed)^2)*(double(Imagem(i+1,j+1))); 
            n11= n11 + ((i-xmed)^1)*((j-ymed)^1)*(double(Imagem(i+1,j+1))); 
            n30= n30 + ((i-xmed)^3)*(double(Imagem(i+1,j+1))); 
            n12= n12 + ((i-xmed)^1)*((j-ymed)^2)*(double(Imagem(i+1,j+1))); 
            n21= n21 + ((i-xmed)^2)*((j-ymed)^1)*(double(Imagem(i+1,j+1))); 
            n03= n03 + ((j-ymed)^3)*(double(Imagem(i+1,j+1))); 
            n00= n00 + (double(Imagem(i+1,j+1))); 
        end
        
    end
    
    n20= n20/n00^(2);
    n02= n02/n00^(2);
    n11= n11/n00^(2);
    n30= n30/n00^(2.5);
    n12= n12/n00^(2.5);
    n21= n21/n00^(2.5);
    n03= n03/n00^(2.5);
    
    Matriz(1,1) = n20 + n02;
    Matriz(1,2) = (n20 - n02)^2 + 4*(n11^2);
    Matriz(1,3) = (n30 - 3*n12)^2 + (3*n21 - n03)^2;
    Matriz(1,4) = (n30 + n12)^2 + (n21 + n03)^2;
    Matriz(1,5) = (n30 - 3*n12)*(n30 + n12)*((n30+n12)^2 - 3*(n21 + n03)^2)+(3*n21 - n03)*(n21+n03)*(3*(n30+n12)^2 - (n21+n03)^2);
    Matriz(1,6) = (n20 - n02)*((n30 + n12)^2 - (n21 + n03)^2)+4*n11*(n30+n12)*(n21+n03);
    Matriz(1,7) = (3*n21 - n03)*(n30 + n12)*((n30 + n12)^2 - 3*(n21 + n03)^2) - (n30 - 3*n12)*(n21 + n03)*(3*(n30+n12)^2 - (n21+n03)^2);
    
    
    
    
    
