##Problem 1

df <- data.frame(read.delim("/Users/stevencocke/Downloads/Download-22/yob2016 (1).txt", sep=";", header = FALSE))

names(df) <- c("Name", "Gender", "NumberofChildren")

summary(df)

srt(df)

grep("yyy$",df$Name)

df[212,]

y2016 <- df[-212,]

grep("yyy$", y2016$Name)


##Problem 2
y2015 <- data.frame(read.delim("/Users/stevencocke/Downloads/Download-22/yob2015 (1).txt", sep=",", header = FALSE))

names(y2015) <- c("Name", "Gender", "NumberofChildren")

##The bottom 10 Names all appear 5 times in 2015, and the last two Zyrus and Zyus could be a mispelling
tail(y2015, 10)

final <- merge(y2016,y2015,by="Name", na.rm=TRUE)

##Problem 3
Total <- final$NumberofChildren.x + final$NumberofChildren.y
final <- cbind(final, Total)
final <- final[order(-Total),]
head(final,10)
head(final[!(final$Gender.x=="M" & final$Gender.y=="M"),],10)

top10girls <- head(final[!(final$Gender.x=="M" & final$Gender.y=="M"),],10)
top10girls <- subset(top10girls, select = -c(Gender.y, Gender.x, NumberofChildren.x, NumberofChildren.y))
write.csv(top10girls, 'top10girls.csv',row.names = FALSE)


