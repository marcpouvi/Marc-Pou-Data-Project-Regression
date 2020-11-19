# Data Project Regression
The following repository contains an analysis of the property prices for the houses sold between May 2014 to May 2015 in the USA. For this analysis, a dataset of information on 22,000 properties has been used.

There are 3 main documents:
- Python - House Pricing Regression Project: Contains a Machine Learning Model study, aiming to choose the best model that predicts better the price of the properties 
- SQL questions - regression: Answered SQL questions with queries, extracting the information required 
- Tableau - Regression: Visualization of some of the raw document data.

The objective is to build a model that predicts the price of a house based on features provided in the dataset. The management also wants to explore the characteristics of the houses using some business intelligence tools. One of those parameters includes understanding which factors are responsible for higher property value - $650K and above.

# Data Analysis 

The main tool used for the data analysis has been Python, and this document contains a brief explanation of the whole workflow: 

DATA EXTRACTION

Before the analysis, the regression_data_clean csv file has been imported to anaconda in order to analyze it, it contained the information related with the 22.000 properties.

DATA EXPLORATION

The following techniques has been applied: data.shape, data.head(5), data.dtypes, data.info(). With this, we obtained relevant information of the data set such as the type of the variables, if there are Nulls Values or the number of rows.

DATA PREVISUALIZATION 

For previsualizing the data, the main variables had been plotted using multiple distplots graphs, and an observation has been made.

DATA CLEANING, WRANGLING AND PRE-PROCESSIONG

Nulls values has been checked, the headers has been standarized and duplicated values has been processed. Another main process, has been changing the types of the columns. Finally, a correlation head map and numerical table has been used in order to check the correlation between the independent variables.

NEW DATA VISUALIZATION

After cleaning and wrangling the new data, it has been plotted again. Imbalanced data has been detected 

CLEANING AND WRANGLING THE NEW DATA

From the visualization, we observe that some of the boolean data is imbalanced. We will deal with it latter. But first, we need to transform it to a numeric variable
We created a function. Also we dropped the outliers notices before. 

PREPROCESSING THE DARTA

Categorical values has been encoded, then normalized using Standard Scaler and the imablanced data has been compensated using a random oversampler techinque


APPLYING AND EVALUATE THE MODEL

The first model applied has been Linear Regression for multiple variables, having and accuracy on 52%
Then the Ordinary Least Square model has also been applied, obtaining similars results. It's normal as they are the same model but imported from different libraries
Polynomial regression has been applied but not evaluated










