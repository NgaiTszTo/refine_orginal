require(tidyr)
require(dplyr)
#define refine_original as refine
refine <- tbl_df(refine_original)
#changing the company's column to lowercase
refine$company <- tolower(refine$company)
#1 standardize all the misspellings/ clean up brand names
philips <- agrep(pattern = "philips",refine$company, max.distance = 3,ignore.case =FALSE, value =FALSE)
akzo <- agrep(pattern = "akzo",refine$company, max.distance = 2,ignore.case =FALSE, value =FALSE)
van_houten <- agrep(pattern = "van_houten",refine$company, max.distance = 2,ignore.case =FALSE, value =FALSE)
unilever<- agrep(pattern = "unilever",refine$company, max.distance = 2,ignore.case =FALSE, value =FALSE)

refine$company[philips] <- "philips"
refine$company[akzo] <- "akzo"
refine$company[van_houten] <- "van houten"
refine$company[unilever] <- "unilever

# 2 Separate product code and number
refine <- separate(refine,`Product code / number`,into = c("Product code", "Product number"),remove = TRUE)

#3 Add product categories
product_category <- refine$`Product code`
product_category <- cbind("Product code",product_category)
product_category <- gsub(pattern = "p",replacement = "Smartphone",x = product_category)
product_category <- gsub(pattern = "x",replacement = "Laptop",x = product_category)
product_category <- gsub(pattern = "v",replacement = "TV",x = product_category)
product_category <- gsub(pattern = "q",replacement = "Tablet",x = product_category)
refine$'product category' <- product_category
refine <- refine[,c(1,2,8,3,4,5,6,7)]




# 4 Add full address for geocoding
refine <- unite(refine,full_address,'address':'country',sep = ",",remove = TRUE)

#5  Create dummy variables for company and product category
