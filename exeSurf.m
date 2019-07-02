function [bag,testSet,trainingSet] = exeSurf()
   
 setDir = 'C:/Users/jhuli/Desktop/Computacao/Quinto/PDI/Artigos2/tp/implementacao/awe/awe/';

 
 imds = imageDatastore(setDir,'IncludeSubfolders', true, 'FileExtensions', '.jpg','LabelSource','foldernames');
 
 [trainingSet,testSet] = splitEachLabel(imds, 0.9 ,'randomize');

 bag = bagOfFeatures(imageSet(trainingSet.Files));



end
