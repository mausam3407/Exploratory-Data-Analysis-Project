NEI<-readRDS("summarySCC_PM25.rds")
baltimore<-subset(NEI,fips=="24510",type="ON-ROAD")
dyear<-split(baltimore,baltimore$year)
sums<-c()
for(year in dyear){
  sums<-c(sums,sum(year$Emissions))
}
barplot(sums,names.arg = c(1999,2002,2005,2008),log="y",
        col=wes_palette(n=4,name="GrandBudapest2"),
        main="Total PM2.5 Emissions in Tons for 4 years in US from
        Motor Vehicle")