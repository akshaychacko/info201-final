#### Info 201 Final Project
Akshay Chacko, Beck Millet, Derek Dawson
# An Analysis of US Pollution from 2000-2016
![app](/data/pic.JPG)

## This ShinyApp provides an analysis of the concentration levels of four pollutants in the USA. The original data was obtained from the Environmental Protection Agency, then scraped and reuploaded by a third party. We had to spend a lot of effort wrangling the dataset in order to get it to a usable form. This was particularly difficult as there were approximately 1 million rows. The histogram illustrates the frequency of observation counts per pollutant for each recorded concentration. This is helpful because it provides insight on how gradual and often the distribution of pollutants varies in the United States. If the histogram is skewed, it shows that there is little variation in the possible levels of the pollutant. However, if the pollutant is equally distributed, this indicates greater variation in the possible concentrations that occur. The bin size will adjust the histogram scale accordingly although the trends can be seen most clearly using the highest setting

## The data table on the left is a list of the means of each pollutant per year. Since our data set was very large and detailed, we had to compute the average of all the unique means per state, providing an accurate overall analysis of the country as a whole.
## The bar graph is a visual representation of the table data and will provide information upon hovering with the mouse, thanks to the Plotly library. The graph illustrates the trend that every pollutant level has risen in concentration over the past two decades.

## Both the histogram and bar graph are controlled by radio buttons on the left side, which determine the specific pollutant to display the information for.

## This app is beneficial for environmental analysis because we can devise plans for improvement based off the pollutant's trends and causes. For example, O3 pollution generally occurs due to power plants, refineries, and chemical plants. This mean a right skewed frequency distribution could lead researchers to encourage the use of alternative energy, since the data illustrates a large frequency of high concentrations.


## Click to view project [demo](https://akshayc.shinyapps.io/info201-final/)
