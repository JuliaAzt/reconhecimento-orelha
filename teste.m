
function teste() 
enderecoT= 'C:\Users\jhuli\Desktop\Computacao\Quinto\PDI\Artigos2\tp\implementacao\awe\awe\';

%enderecos = ['001\';'002\';'003\';'004\';'005\';'006\';'007\';'008\';'009\';'010\';'011\';'012\';'013\';'014\';'015\';'016\';'017\';'018\';'019\';'020\';'021\';'022\';'023\';'024\';'025\';'026\';'027\';'028\';'029\';'030\';'031\';'032\';'033\';'034\';'035\';'036\';'037\';'038\';'039\';'040\';'041\';'042\';'043\';'044\';'045\';'046\';'047\';'048\';'049\';'050\';'051\';'052\';'053\';'054\';'055\';'056\';'057\';'058\';'059\';'060\';'061\';'062\';'063\';'064\';'065\';'066\';'067\';'068\';'069\';'070\';'071\';'072\';'073\';'074\';'075\';'076\';'077\';'078\';'079\';'080\';'081\';'082\';'083\';'084\';'085\';'086\';'087\';'088\';'089\';'090\';'091\';'092\';'093\';'094\';'095\';'096\';'097\';'098\';'099\';'100\'];

enderecos = ['015\'];
[quant,~] = size(enderecos);
%enderecoB= 'C:\Users\jhuli\Desktop\Computacao\Quinto\PDI\Artigos2\tp\implementacao\awe\awe\base\';
extT ='.jpg';

for k=1:quant;
  enderecos(k,:)
    enderecoAtual = [enderecoT, enderecos(k,:)];
    arquivosT=dir([enderecoAtual '*' extT]);
    quant_imgT=length(arquivosT);
    
   
    
    for i = 1 : quant_imgT
       img = imread([enderecoAtual,arquivosT(i, 1).name]);
       t = snakeModel( img);
       a = detectedges(img,t);    
             
      [~ ,lin] = size(arquivosT(i, 1).name);
      
      imwrite(a,[enderecoAtual,arquivosT(i, 1).name(1,1:lin-4) ,'-' ,num2str(k) ,'.png']);
    end
 end
 
end