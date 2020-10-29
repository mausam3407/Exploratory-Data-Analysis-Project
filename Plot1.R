byyear<-split(NEI,NEI$year)
mylist<-c()
for(year in byyear){
  mylist<-c(mylist,sum(year$Emissions))
}
barplot(mylist,names.arg = c(1999,2002,2005,2008),log="y",
        col=wes_palette(n=4,name="Rushmore"),
        main="Total PM2.5 Emissions in Tons for 4 years in US")