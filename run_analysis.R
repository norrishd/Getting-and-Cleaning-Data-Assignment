run_analysis = function() {
      # Read in training and test data
      xtrain = read.table("./train/X_train.txt")
      xtest = read.table("./test/X_test.txt")
      
      # Merge datasets
      xall = rbind(xtrain, xtest)
      
      # Read in col names
      names = read.table("features.txt")
      names = names[, 2]
      names(xall) = names
      
      # Find measurements that deal with mean and stdev
      meanIndex = grep("mean", names, fixed=TRUE)
      stdIndex = grep("std", names, fixed=TRUE)
      xcut = xall[, c(meanIndex, stdIndex)]
      
      # Get names
      trainactivities = read.table("./train/y_train.txt")
      testactivities = read.table("./test/y_test.txt")
      allactivities = rbind(trainactivities, testactivities)
