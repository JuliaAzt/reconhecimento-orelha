function nimg =detectedges(img, mask)
  [c,l,~] = size(img);
  if size(img,3)==3
    img= rgb2gray(img);
  end
  s =10;
  s1 = 20;
  w=1;
  %se a imagem for grande o desfoque é maior
  if l>150 && c>100
    s = 10;
    s1 = 35;
    w = 20;
  end
  
  img = imfilter(img,fspecial('gaussian',w));
  %figure, imshow(img);
  %img = imsmooth (img, 'Custom Gaussian', s,s1);
  %figure, imshow(img);
  img = imresize(img,[322 185]);
  mask = imresize(mask,[322 185]);
  %nimg = medfilt2(img);
  %nimg= img;
  [nimg,~] = edge(img, 'Canny');

  %cria um elemento de estruturação morfologica(SE) que
  %de acordo com o tamanho da vizinhança e um angulo 
  %determina a dilatação dos pixels
  
  SE = strel('line',1,90);
  nimg = imdilate(nimg,SE);
  nimg = bwmorph(nimg,'thin');

  nimg= mask.*nimg;


end
