refine
refine <- separate(refine,`Product code / number`,into = c("Product code", "Product number"),remove = TRUE)
View(refine)
?merge
product_category <- refine$`Product code`
product_category <- cbind("Product code",product_category)
product_category
?gsub
View(refine)
refine$`Product code`
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
rm(product_category)
product_category <- refine$`Product code`
product_category <- cbind(refine$`Product code`,product_category)
product_category <- gsub(pattern = "p",replacement = "Smartphone",x = product_category)
product_category <- gsub(pattern = "x",replacement = "Laptop",x = product_category)
product_category <- gsub(pattern = "v",replacement = "TV",x = product_category)
product_category <- gsub(pattern = "q",replacement = "Tablet",x = product_category)
product_category
View(refine)
refine %.% select(product_category) %>% mutate()
refine %>% select(product_category) %>% mutate()
View(refine)
refine %>% select(product_category) %>% mutate()
View(refine)
product_category
refine %>% select(product_category) %>% mutate()
refine %>% select(product_category[2]) %>% mutate()
refine %>% select(product_category) %>% mutate(product_category = NULL)
View(refine)
View(refine)
product_category
rm(product_category)
refine$product_category <- refine$`Product code`
View(refine)
product_category <- gsub(pattern = "p",replacement = "Smartphone",x = product_category)
View(refine)
product_category <- cbind(refine$`Product code`,refine$product_category)
product_category
product_category <- gsub(pattern = "p",replacement = "Smartphone",x = product_category)
product_category <- gsub(pattern = "x",replacement = "Laptop",x = product_category)
product_category <- gsub(pattern = "v",replacement = "TV",x = product_category)
product_category <- gsub(pattern = "q",replacement = "Tablet",x = product_category)
View(refine)
View(refine)
product_category
refine$product_category
product_category[2]
product_category[,2]
refine$product_category <- product_category[,2]
View(refine)
library(tidyr)
library(dplyr)
colnames(refine)
refine <- refine[,c(1,2,8,3,4,5,6,7)]
refine$full_address <- refine$address + refine$city +refine$country
refine <- mutate(refine$full_address)
?combine
?bind_cols
full_address <- bind_cols('address','city','country')
full_address <- bind_cols(refine$address,refine$city)
full_address <- unite(refine,refine$address:refine$country)
full_address <- unite(refine,refine$address:refine$country,sep = "-")
unite(refine,full_address,refine$address:refine$country,sep = "-")
unite(refine,full_address,'address':'country',sep = "-")
unite(refine,full_address,'address':'country',sep = "-",remove = FALSE)
unite(refine,full_address,'address':'country',sep = "-",remove = FALSE)
unite(refine,full_address,'address':'country',sep = "-",remove = TRUE)
refine <- unite(refine,full_address,'address':'country',sep = "-",remove = TRUE)
refine <- unite(refine,full_address,'address':'country',sep = ",",remove = TRUE)
refine <- unite(refine,'full_address',sep = ",",remove = TRUE)
load("~/refine_orginal/refine_orginal.Rproj.RData")
load("~/refine_orginal/.RData")
refine <- unite(refine,full_address,'address':'country',sep = ",",remove = TRUE)
savehistory("~/refine_orginal/refine.R")
