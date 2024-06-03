#Calculate description statistics
descriptive_stats <- describe(churn)
print(descriptive_stats)


#Test of normality
normality_test <- normality(churn)
print(normality_test)

#Visualisation of normality
plot_normality(churn)

#Calculation of correlation coefficient using correlate()
correlation_matrix <- correlate(churn)
print(correlation_matrix)

#Visualisation of the correlation matric using plot.correlate()
plot.correlate(correlation_matrix)

#Grouping data by Internet service
categ <- target_by(churn, Internet.Service)
# analyzing relationship between tenure and churn
cat_num <- relate(categ, Tenure)
# Summarizinf relationship
summary(cat_num)

#visualizing relationship
plot(cat_num)

install.packages('vcd')
library(vcd)

# Assuming the churn dataset is already loaded
# Create the mosaic plot
mosaic(~ Gender + Internet.Service, data = churn)

str(churn)
names(churn)


#Create static EDA report
eda_paged_report(churn)

#Create dynamic EDA report
eda_web_report(churn)