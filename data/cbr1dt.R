# annual Crude Birth Rate in long format (as data.table)
cbr1dt <- local({
    e <- new.env()
    load("cbr1dt.rda", envir= e)
    load("countries.rda", envir= e)
    merge(e$countries[, c("country_code", "name")], 
          data.table::as.data.table(e$cbr1dt), by = "country_code", 
          sort = FALSE)
})
