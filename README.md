# reconhecimento-orelha

(1) A função teste gera as imagens segmentadas dentro das 100 pastas como arquivo de extensão '.png'.

(2) A função exeSurf - extrai os pontos de interesse e coloca em clusters.

[bag,testSet,trainingSet] = exeSurf();

Para ler as imagens segmentadas deve-se mudar a extensão do arquivo de leitura na função :
De .jpg para .png

imds = imageDatastore(setDir,'IncludeSubfolders', true, 'FileExtensions', '.jpg','LabelSource','foldernames');


(3) A função exeSurf2 - classifica os pontos extraidos.
exeSurf2(bag,testSet,trainingSet);

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Para executar com as imagens normais basta usar:

1º - [bag,testSet,trainingSet] = exeSurf();

2º - exeSurf2(bag,testSet,trainingSet);

Para executar com as imagens segmentadas basta usar:

1º - teste()

2º - [bag,testSet,trainingSet] = exeSurf(); //mudar parametro da função imageDatastore, comom dito no item (2)

3º - exeSurf2(bag,testSet,training)

Obs.: para executar essas funções é necessário mudar o caminho do repositório para seu repósitorio atual, nas funções teste(1) e exeSurf(2).
