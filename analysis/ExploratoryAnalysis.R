df = read.csv('./data/Master.csv')
head(df)
str(df)
View(head(df))

library(ggplot2)
ggplot(df, aes(x=height, y=weight)) + geom_point()
