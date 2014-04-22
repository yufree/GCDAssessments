# Read the train/test features data and name the features

trainx <- read.table('./data/UCI HAR Dataset/train/X_train.txt',sep="",quote="")
testx <- read.table('./data/UCI HAR Dataset/test/X_test.txt',sep="",quote="")
FeatureNames <- read.table('./data/UCI HAR Dataset/features.txt')
colnames(testx) <- colnames(trainx) <- FeatureNames[,2]

# Merges the training and the test sets to create one data set

Data <- rbind(trainx,testx)

# Extracts only the measurements on the mean and standard deviation for each measurement

SubData <- Data[,grep("*mean*|*std*",colnames(Data))]

# Uses descriptive activity names to name the activities in the data set

trainy <- read.table('./data/UCI HAR Dataset/train/y_train.txt')
testy <- read.table('./data/UCI HAR Dataset/test/y_test.txt')
Datay <- rbind(trainy,testy)
colnames(Datay) <- "ActivityIndex"
SubjectNamesTrain <- read.table('./data/UCI HAR Dataset/train/subject_train.txt')
SubjectNamesTest <- read.table('./data/UCI HAR Dataset/test/subject_test.txt')
SubjectNames <- rbind(SubjectNamesTrain,SubjectNamesTest)
colnames(SubjectNames) <- "SubjectNames"

DataAll <- cbind(SubData,Datay,SubjectNames)

TrainyNames <- read.table('./data/UCI HAR Dataset/activity_labels.txt',sep="")
colnames(TrainyNames) <- c("ActivityIndex","Activity")

# Creates tidy data set with the average of each variable for each activity and 
# each subject and appropriately labels the data set with descriptive activity names

DataActivity <- merge(DataAll,TrainyNames,by="ActivityIndex")
DataActivity <- DataActivity[,1:(ncol(DataActivity)-1)]
list  <- split(DataActivity,list(DataActivity$ActivityIndex,DataActivity$SubjectNames))
results <- vector("list",length(list))
for(i in seq_along(list)){
        piece <- list[[i]]
        results[[i]] <- apply(piece,2,mean)
}
result <- as.data.frame(do.call("rbind",results))
TidyData <- merge(result,TrainyNames,by="ActivityIndex")
TidyData <- TidyData[order(TidyData$ActivityIndex,TidyData$SubjectNames),]
TidyData <- TidyData[,-1]

# Save the clean data

write.table(TidyData,"tidydata.txt")
