library("data.table")

outcome <- data.table::fread('~/Data Science/R Programming/ProgrammingAssignment3/rprog_data_ProgAssignment3-data/outcome-of-care-measures.csv')
outcome[, (11) := lapply(.SD, as.numeric), .SDcols = (11)]
outcome[, lapply(.SD
                 , hist
                 , xlab = "Deaths"
                 , main = "Hospital 30-Day Death (Mortality) Rates from Heart Attack"
                 , col = "lightblue")
        , .SDcols = (11)]
