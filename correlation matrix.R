View(iris)
library(dlookr)
plot_correlate(iris[,1:3])



##install.packages("performanceAnalytics")

library(PerformanceAnalytics)
chart.Correlation(iris[,1:3])


##install.packages("tidyverse")
library(tidyverse)
##install.packages("GGally")
library(GGally)


ggpairs(iris,
        columns = 1:3,
        aes(colour = Species),
        lower = list(continuous="smooth"),
        upper = list(continuous=wrap("cor",method="pearson"))
        )

##install.packages("ggstatsplot")
library(ggstatsplot)

grouped_ggcorrmat(
  iris,
  type="parametric",
  grouping.var =(iris$Species),
  plotgrid.args = list(nrow=2)
)






###correlation for two numeric variable using ggstatsplot and mtcars dataset

ggscatterstats(
  data = mtcars,
  x=hp,
  y=qsec,
  type = "parametric"       ### options- "nonparametric","robust","bayesan"
)





