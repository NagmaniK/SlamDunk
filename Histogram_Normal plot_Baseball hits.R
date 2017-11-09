## Plot the aggregate hits by all baseball players in the league 
## Data is taken from the file hits.csv in Datasets repo 
## 
hits_data <- read.csv('https://raw.githubusercontent.com/NagmaniK/datasets/master/Hitters.csv')
hits_data
stat_hits_data <- hits_data$Hits
hist(stat_hits_data, breaks= 8, 
     prob = TRUE,
     ylim = c(0, 0.008),
  # freq = FALSE,
        col = "thistle1", # Or use: col = colors() [626]
        main = "Histogram of Number of Hits \nAll Baseball Leagues",
        xlab = "Number of Hits by All Batters")
#
curve(dnorm( x, mean = mean(stat_hits_data), sd = sd(stat_hits_data)), 
            col = "red",
            lwd = 3,
            add = TRUE )
## The histogram resembles a Normal density closely 
