CO2 <- datasets::CO2

wd<- getwd()
CO_path <- paste0(wd,"/CO2")
dir.create(CO_path)
Type_var <- unique(CO2$Type)

for (i in Type_var) {
  tmp_wd <- paste0(CO_path, "/",i)
  dir.create(tmp_wd)
  data <- filter(CO2, Type == i)
  
  name <- (paste0(i, "_data"))
  assign(name, data)
  path <- paste0(tmp_wd, "/", name, ".csv") 
  write_csv(get(name), path) 
}



