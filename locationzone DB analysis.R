#display venue id and venue name
venues <- unique(c(agreefydb$venueName))
venuesid <- unique(c(agreefydb$venueID))
freq<- table(agreefydb$venueID)
represent <- data.frame(venueid=venuesid,
                        venue = venues,
                        frequen = freq
                        )
represent

#list the number of male and female seperately
table(agreefydb$gender)

#get frequency of visitors in each mall
freq<- table(agreefydb$venueID,agreefydb$gender)
freq

median(c(agreefydb$age))

clinical.trial <-
  data.frame(patient = 1:100,
             age = rnorm(100, mean = 60, sd = 6),
             treatment = gl(2, 50,
                            labels = c("Treatment", "Control")),
             center = sample(paste("Center", LETTERS[1:5]), 100, replace = TRUE))
clinical.trial


n <- rnorm(10, mean = 100, sd = 36)
n