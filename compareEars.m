function nimg = compareEars(I,I2)
  %le as imagens do banco de dados
  %processa elas
  %tenta encaixar o primeiro paramento nos pontos do segundo
  
  I = imresize(I,size(I2));
   
  I2 = icp(I,I2);
  nimg = distance(I, I2);

 
  
endfunction
