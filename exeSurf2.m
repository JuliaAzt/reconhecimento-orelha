function nimg = exeSurf2(bag,testSet,trainingSet)
nimg=0;
 
 n = size(trainingSet.Files); 

 k=1;
 for i=1:9:(n-8)
     imgset(k)= imageSet(trainingSet.Files(i));
     imgset(k).Description = char(trainingSet.Labels(i));
     k = k+1;
    
 end
 
 imgTest = imageSet(testSet.Files);
 n2 = size(testSet.Files);
 
 for i=1:n2
     imgTest(i)= imageSet(testSet.Files(i));
     imgTest(i).Description = char(testSet.Labels(i));
 end
 
 categoryClassifier = trainImageCategoryClassifier(imgset,bag);
 confMatrix = evaluate(categoryClassifier,imgTest);
 
 mean(diag(confMatrix));
end