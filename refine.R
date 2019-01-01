#define refine_original as refine
refine <- tbl_df(refine_original)
#changing the company's column to lowercase
refine$company <- tolower(refine$company)
#standardize all the misspellings/ clean up brand names
philips <- agrep(pattern = "philips",refine$company, max.distance = 3,ignore.case =FALSE, value =FALSE)
akzo <- agrep(pattern = "akzo",refine$company, max.distance = 2,ignore.case =FALSE, value =FALSE)
van_houten <- agrep(pattern = "van_houten",refine$company, max.distance = 2,ignore.case =FALSE, value =FALSE)
unilever<- agrep(pattern = "unilever",refine$company, max.distance = 2,ignore.case =FALSE, value =FALSE)

refine$company[philips] <- "philips"
refine$company[akzo] <- "akzo"
refine$company[van_houten] <- "van houten"
refine$company[unilever] <- "unilever


refine <- separate(refine,`Product code / number`,into = c("Product code", "Product number"),remove = TRUE)
product_category <- refine$`Product code`
product_category <- cbind("Product code",product_category)


product_category <- gsub(pattern = "p",replacement = "Smartphone",x = product_category)
product_category <- gsub(pattern = "x",replacement = "Laptop",x = product_category)
product_category <- gsub(pattern = "v",replacement = "TV",x = product_category)
product_category <- gsub(pattern = "q",replacement = "Tablet",x = product_category)
product_category
refine
refine <- product_category
rm(product_category)
refine
refine
View(refine)
product_category
View(refine)
View(refine)
rm(refine)
library(dplyr)
refine <- tbl_df(refine_original)
refine <- tolower(refine)
refine
rm(refine)
refine_original
refine <- tbl_df(refine_original)
refine <- tolower(refine$company)
View(refine_original)
rm(refine)
refine <- tbl_df(refine_original)
refine$company <- tolower(refine$company)
View(refine)
philips<- agrep(pattern = "philips", x = refine$company, ignore.case = TRUE, value = FALSE, max.distance = 3)
akzo <- agrep(pattern = "akzo", x= refine$company,ignore.case = FALSE, value = FALSE,max.distance = 2)
van_houten <- agrep(pattern = "van houten",x = refine$company, ignore.case = FALSE, value = FALSE, max.distance = 2)
unilever <- agrep(pattern = "unilever", x = refine$company, ignore.case = FALSE, value = FALSE, max.distance = 2)
refine$company[unilever] <- "unilever"
refine$company[akzo] <- "akzo"
refine$company[unilever] <- "unilever"
refine$company[philips] <- "philips"
View(refine)
product_category <- refine$`Product code / number`
product_category
search()
library(tidyr)
refine<- separate(refine,"Product code /number", into = c("Product code","Product number"),remove = TRUE)
refine<- separate(refine,`Product code / number`, into = c("Product code","Product number"),remove = TRUE)
View(refine)
product_category <- gsub(pattern = "q",replacement = "Tablet",x = product_category)
product_category <- gsub(pattern = "v",replacement = "TV",x = product_category)
product_category <- gsub(pattern = "x",replacement = "Laptop",x = product_category)
product_category <- gsub(pattern = "p",replacement = "Smartphone",x = product_category)
View(refine)
product_category
View(refine)
rm(product_category)
product_category <- refine$`Product code`
product_category <- gsub(pattern = "q",replacement = "Tablet",x = product_category)
product_category <- gsub(pattern = "v",replacement = "TV",x = product_category)
product_category <- gsub(pattern = "x",replacement = "Laptop",x = product_category)
product_category <- gsub(pattern = "p",replacement = "Smartphone",x = product_category)
View(refine)
product_category
rm(product_category)
product_category <- refine$`Product code`
product_category
product_category <- cbind("product code","product_category")
product_category
rm(product_category)
product_category <- refine$`Product code`
product_category <- cbind(refine,"Product code")
product_category
rm(product_category)
product_category <- refine$`Product code`
product_category <- cbind(refine$`Product code`,product_category)
product_category
product_category <- gsub(pattern = "q",replacement = "Tablet",x = product_category)
product_category <- gsub(pattern = "v",replacement = "TV",x = product_category)
product_category <- gsub(pattern = "x",replacement = "Laptop",x = product_category)
product_category <- gsub(pattern = "p",replacement = "Smartphone",x = product_category)
product_category
rm(product_category[,1])
rm("product_category[,1]")
product_category[,1]
product_category
product_category <- product_category[,-1]
product_category
product_category <- cbind('product code',product_category)
product_category
refine$product_category <- product_category
View(refine)
product_category
product_category <- product_category[,-1]
product_category
rm(product_category)
product_category <- refine$`Product code`
product_category <- cbind(`Product code`,product_category)
View(refine)
product_category <- cbind(`Product code`,product_category)
product_category
product_category <- cbind(refine$`Product code`,product_category)
product_category
product_category <- gsub(pattern = "q",replacement = "Tablet",x = product_category)
product_category <- gsub(pattern = "v",replacement = "TV",x = product_category)
product_category <- gsub(pattern = "x",replacement = "Laptop",x = product_category)
product_category <- gsub(pattern = "p",replacement = "Smartphone",x = product_category)
product_category
rm(product_category)
product_category <- refine$`Product code`
product_category
cbind(refine$`Product code`,product_category)
product_category <- cbind(refine$`Product code`,product_category)
product_category
gsub(pattern = "q",replacement = "Tablet",x = product_category)
product_category <- gsub(pattern = "q",replacement = "Tablet",x = product_category)
gsub(pattern = "v",replacement = "TV",x = product_category)
product_category <- gsub(pattern = "v",replacement = "TV",x = product_category)
gsub(pattern = "x",replacement = "Laptop",x = product_category)
product_category <- gsub(pattern = "x",replacement = "Laptop",x = product_category)
gsub(pattern = "p",replacement = "Smartphone",x = product_category)
product_category
gsub(pattern = "p",replacement="Smartphone",x = product_category)
gsub(pattern ="p",replacement="Smartphone",x = product_category)
product_category

refine <- unite(refine,full_address,'address':'country',sep = "-",remove = TRUE)
refine <- unite(refine,full_address,'address':'country',sep = ",",remove = TRUE)
refine <- unite(refine,'full_address',sep = ",",remove = TRUE)
load("~/refine_orginal/refine_orginal.Rproj.RData")
load("~/refine_orginal/.RData")
refine <- unite(refine,full_address,'address':'country',sep = ",",remove = TRUE)
savehistory("~/refine_orginal/refine.R")
