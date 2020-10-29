baltimore<-subset(NEI,fips=="24510")
byear<-split(baltimore,baltimore$year)
mylist1<-c()
for(year in byear){
  mylist1<-c(mylist1,sum(year$Emissions))
}
barplot(mylist1,names.arg = c(1999,2002,2005,2008),log="y",
        col=wes_palette(n=4,name="Cavalcanti1"),
        main="Total PM2.5 Emissions in Tons for 4 years in Baltimore")