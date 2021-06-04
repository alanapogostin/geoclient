# testing file
geoclient_api_keys("fc438498", "ae6c7f1b3c1fd5e1559cd6fbfb2f7d37", overwrite = TRUE, install = TRUE)

# Making test
# devtools::load_all()
building <- c("1", "3", "2", "3", "3", "5")
street <- c("PRINCE ST", "GREENWICH AVE", "E 61ST ST", "E 48TH ST", "GREENWICH AVE", "AVENUE A")
borough <- c("MANHATTAN", "MANHATTAN", "MANHATTAN", "MANHATTAN", "MANHATTAN", "MANHATTAN")
zip1 <-  c("10012", "10014", "10065", "10017", "10014", "10009")

df <- data.frame(building,street,borough,zip1)

df2 <- dplyr::mutate(df, zip2 = geo_address(building, street, borough)[["zipCode"]])

df3 <- dplyr::mutate(df, zip2 = geo_address_data(building, street, borough))

