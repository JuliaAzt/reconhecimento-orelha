function nimg = rotaciona(I,I2)
  resultado = 999999;
  for i=1:36
    aux = imrotate(I,i*10);
    e = distance(aux, I2);
    
    if resultado > e
      resultado = e;
    end
    
  endfor
  nimg = resultado
endfunction
