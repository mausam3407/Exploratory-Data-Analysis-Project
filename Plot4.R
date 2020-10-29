coal<-subset(SCC,grepl("Coal",EI.Sector))
df<-NEI[NEI$SCC %in% coal$SCC,]
dyear<-split(df,df$year)
sums<-c()
for(year in dyear){
  sums<-c(sums,sum(year$Emissions))
}
barplot(sums,names.arg = c(1999,2002,2005,2008),log="y",
        col=wes_palette(n=4,name="Chevalier1"),
        main="Total PM2.5 Emissions in Tons for 4 years in US from Coal Combustion")