NEI<-readRDS("summarySCC_PM25.rds")
baltimore<-subset(NEI,fips=="24510",type="ON-ROAD")

LA<-subset(NEI,fips=="06037",type="ON-ROAD")
lyear<-split(LA,LA$year)
byear<-split(baltimore,baltimore$year)
Total=c()
Year=c()
Type=c()
for(k in byear){
  Type=c(Type,"Baltimore")
  Year=c(Year,k[1,6])
  Total<-c(Total,sum(k$Emissions))
}
for(l in lyear){
  Type=c(Type,"LA")
  Year=c(Year,l[1,6])
  Total<-c(Total,sum(l$Emissions))
}
df<-data.frame(Type,Year,Total)
ggplot(df)+geom_line(aes(x=Year,y=Total,color=Type)
                     ,size=2)+xlab("Year")+ylab("PM2.5 in Tons")+labs(title = "Comparisons between Baltimore and LA")