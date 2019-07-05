function nimg = exeSurf2(bag,testSet,trainingSet)
nimg=0;
 
 categoryClassifier = trainImageCategoryClassifier(trainingSet ,bag);
 confMatrix = evaluate(categoryClassifier,testSet);
 
 mean(diag(confMatrix));
end