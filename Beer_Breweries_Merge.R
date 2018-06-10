Beer <- read.csv(file="/Users/stevencocke/Downloads/CaseStudy_2_2_2/Beers.csv", header=TRUE, sep=",")
Breweries <-read.csv(file="/Users/stevencocke/Downloads/CaseStudy_2_2_2/Breweries.csv", header=TRUE, sep=",")

BeerBreweries <- merge(Beer, Breweries, by.x="Brewery_id", by.y="Brew_ID", all=TRUE)
BeerBreweries

write.csv(BeerBreweries, "/Users/stevencocke/Desktop/DoingDataScience Project/BeerBreweries.csv", row.names=FALSE)