function [Descritores,saidaDesejada] = Treinoslim(Livro1,Livro2,Livro3,Livro4)

[Livro1_0,tamanho]=AcharQuadrado(Livro1);
DescritoresL10 = momentosInvariantes(Livro1_0)';
Livro1_90=imrotate(Livro1_0,90);
DescritoresL190 = momentosInvariantes(Livro1_90)';
Livro1_180=imrotate(Livro1_0,180);
DescritoresL1180 = momentosInvariantes(Livro1_180)';
Livro1_270=imrotate(Livro1_0,270);
DescritoresL1270 = momentosInvariantes(Livro1_270)';
Descritores1=horzcat(DescritoresL10,DescritoresL190,DescritoresL1180,DescritoresL1270);

[Livro1_0,tamanho]=AcharQuadrado(Livro2);
DescritoresL10 = momentosInvariantes(Livro1_0)';
Livro1_90=imrotate(Livro1_0,90);
DescritoresL190 = momentosInvariantes(Livro1_90)';
Livro1_180=imrotate(Livro1_0,180);
DescritoresL1180 = momentosInvariantes(Livro1_180)';
Livro1_270=imrotate(Livro1_0,270);
DescritoresL1270 = momentosInvariantes(Livro1_270)';
Descritores2=horzcat(DescritoresL10,DescritoresL190,DescritoresL1180,DescritoresL1270);

[Livro1_0,tamanho]=AcharQuadrado(Livro3);
DescritoresL10 = momentosInvariantes(Livro1_0)';
Livro1_90=imrotate(Livro1_0,90);
DescritoresL190 = momentosInvariantes(Livro1_90)';
Livro1_180=imrotate(Livro1_0,180);
DescritoresL1180 = momentosInvariantes(Livro1_180)';
Livro1_270=imrotate(Livro1_0,270);
DescritoresL1270 = momentosInvariantes(Livro1_270)';
Descritores3=horzcat(DescritoresL10,DescritoresL190,DescritoresL1180,DescritoresL1270);

[Livro1_0,tamanho]=AcharQuadrado(Livro4);
DescritoresL10 = momentosInvariantes(Livro1_0)';
Livro1_90=imrotate(Livro1_0,90);
DescritoresL190 = momentosInvariantes(Livro1_90)';
Livro1_180=imrotate(Livro1_0,180);
DescritoresL1180 = momentosInvariantes(Livro1_180)';
Livro1_270=imrotate(Livro1_0,270);
DescritoresL1270 = momentosInvariantes(Livro1_270)';
Descritores4=horzcat(DescritoresL10,DescritoresL190,DescritoresL1180,DescritoresL1270);
Descritores=horzcat(Descritores1,Descritores2,Descritores3,Descritores4);

%saidaDesejada=[1 1 1 1 2 2 2 2 3 3 3 3 4 4 4 4];
saidaDesejada=[0 0 0 0  0 0 0 0  1 1 1 1  1 1 1 1;0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1];
