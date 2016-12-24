function [trainVectors,validationVectors,testVectors,indexOfTrain,indexOfValidation,indexOfTest] = dividerand(allCases,trainRatio,valRatio,testRatio)
  #
  # Divide the vectors in training, validation and test group according to
  # the informed ratios
  #
  # [trainVectors,validationVectors,testVectors,indexOfTrain,indexOfValidatio
  # n,indexOfTest] = dividerand(allCases,trainRatio,valRatio,testRatio)
  #
  # The ratios are normalized. This way:
  #
  # dividerand(xx,1,2,3) == dividerand(xx,10,20,30)
  #

  ## Normalize ratios
  total = trainRatio + valRatio + testRatio;
  #trainRatio = trainRatio / total; not used
  validationRatio = valRatio / total;
  testRatio = testRatio / total;

  ## Calculate the number of cases for each type
  numerOfCases = size(allCases,1);
  numberOfValidation = floor(validationRatio*numerOfCases);
  numberOfTest = floor(testRatio*numerOfCases);
  numberOfTrain = numerOfCases - numberOfValidation - numberOfTest;

  ## Find their indexes
  indexOfAll=randperm(numerOfCases);
  indexOfValidation=sort(indexOfAll(1:numberOfValidation));
  indexOfTest=sort(indexOfAll((1:numberOfTest)+numberOfValidation));
  indexOfTrain=sort(indexOfAll((1:numberOfTrain)+numberOfTest+numberOfValidation));

  ## Return vectors
  trainVectors = indexOfTrain;
  #trainVectors = allCases(:,indexOfTrain);
  testVectors = indexOfTest;
  #testVectors = allCases(:,indexOfTest);
  validationVectors = indexOfValidation;
  #validationVectors = allCases(:,indexOfValidation);
endfunction