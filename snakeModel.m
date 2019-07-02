
function mask = snakeModel(I) 
  
 I = im2double(I); 
 I = imresize(I,[322 185]);
 
 [lin,col,~] = size(I);
  %aplica filtro gaussiano
 I = imfilter(I,fspecial('gaussian'));
  
 x=[1,  ones(1,37),  1 ,     2:5:lin      ,lin , (lin*ones(1,37)) ,lin:-5:2 ,  lin];  
 y=[1,  2:5:col   , col ,(col*ones(1,65)) , col , col:-5:2        ,ones(1,65),   1];

 
 %faz um array com todas as coordenadas
  P=[x(:) y(:)];

 
  Options=struct;
  Options.Verbose=false;
  Options.Iterations=200;
  
  [O,J]=Snake2D(I,P,Options);
  
  %J - mascara da orelha
  %O - vetor - Conjunto de coordenadas finais 
  ind =J>0;
  J(ind) = 1;
  mask =  J;
   
  end