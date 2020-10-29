baltimore<-subset(NEI,fips=="24510")
btype<-split(baltimore,baltimore$type)
Total=c()
Year=c()
Type=c()
for (type in btype){
  byear1<-split(type,type$year)
  #mylist2<-c()
  for(k in byear1){
    Type=c(Type,k[1,5])
    Year=c(Year,k[1,6])
    Total<-c(Total,sum(k$Emissions))
  }
  #Total<-c(mylist3,mylist2)
}
df<-data.frame(Type,Year,Total)
ggplot(df)+geom_line(aes(x=Year,y=Total,color=Type)
                     ,size=2)+xlab("Year")+ylab("PM2.5 in Tons")+labs(title = "Comparisons between different Types of PM2.5")