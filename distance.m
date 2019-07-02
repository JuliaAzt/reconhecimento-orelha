function nimg = distance(f, f1)

  [Y, X] = find(f>0);
  [Y1,X1] = find(f1>0);
  Y = Y(:)';
  X = X(:)';
  Y1= Y1(:)';
  X1 = X1(:)';
  
 [~,tam] = size(X1);
 nimg =0;
  
 for i = 1:tam
  dist = sqrt(((X - X1(i)).^ 2 + (Y - Y1(i)).^ 2));
  nimg = nimg + min(dist(:)');
 end
  

end