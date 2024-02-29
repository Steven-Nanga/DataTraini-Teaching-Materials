 cleaned_data = na.omit(sales_data_sample)
 duplicated_rows <- duplicated(sales_data_sample)
 print(cleaned_data, n= 100 )
 anyDuplicated(sales_data_sample)
 anyDuplicated(cleaned_data)
 
 unique_data = unique(cleaned_data)
 print(unique_data)
 
 boxplot(cleaned_data$QUANTITYORDERED, main = "Quantity Ordered")
 hist(cleaned_data$PRICEEACH, main = "Quantity Ordered")
 
 library(dplyr)
 summarized_data <- cleaned_data %>%
  group_by(PRODUCTLINE) %>%
   summarize(AvgPrice = mean(PRICEEACH))
 
 print(summarized_data)
 
 install.packages("tidyr")
 library(tidyr)
 
 
 wide_data <- cleaned_data %>%
   pivot_wider(names_from = PRODUCTLINE, values_from = PRICEEACH)
 