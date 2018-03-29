Volumetric Equations
================
Bruno Hérault
3/29/2018

-   [problem statement](#problem-statement)
    -   [data uploading](#data-uploading)
    -   [Including Plots](#including-plots)

problem statement
=================

From Ervan

*Dis, je bosse avec un Brésilien sur l'estimation de volume au Para et on tente de développer des modèles allométriques pour différents types forestiers. J'aimerais développer un modèle général en regroupant les 3 types forestiers et toutes les données. Ensuite, j'aimerais tester si il y a un effet type forester sur l'estimation du volume. Je fais cela: lmer(volume ~ log(DBH) + log(Htronc) | type.forestier)*

data uploading
--------------

``` r
flota<-read.csv("FLOTA_FT.csv")
summary(flota)
```

    ##      FT           Pont            DAPm             DAPcm        
    ##  Low  :855   Min.   : 1.00   Min.   :0.05761   Min.   :  5.761  
    ##  Sub  :228   1st Qu.:13.00   1st Qu.:0.23500   1st Qu.: 23.500  
    ##  Trans:181   Median :21.00   Median :0.34750   Median : 34.750  
    ##              Mean   :18.48   Mean   :0.38546   Mean   : 38.546  
    ##              3rd Qu.:27.00   3rd Qu.:0.49412   3rd Qu.: 49.413  
    ##              Max.   :30.00   Max.   :1.23400   Max.   :123.400  
    ##       HCm             HTm              D0               D1        
    ##  Min.   : 2.40   Min.   : 3.00   Min.   :0.0730   Min.   :0.0710  
    ##  1st Qu.: 7.50   1st Qu.: 9.90   1st Qu.:0.2700   1st Qu.:0.2417  
    ##  Median :10.30   Median :14.00   Median :0.3865   Median :0.3490  
    ##  Mean   :10.94   Mean   :14.11   Mean   :0.4382   Mean   :0.3836  
    ##  3rd Qu.:14.00   3rd Qu.:18.00   3rd Qu.:0.5523   3rd Qu.:0.4905  
    ##  Max.   :25.00   Max.   :30.00   Max.   :3.0000   Max.   :1.2720  
    ##        D2               D3               D4               D5        
    ##  Min.   :0.0620   Min.   :0.0650   Min.   :0.0550   Min.   :0.0620  
    ##  1st Qu.:0.2288   1st Qu.:0.2210   1st Qu.:0.2140   1st Qu.:0.2050  
    ##  Median :0.3320   Median :0.3180   Median :0.3070   Median :0.2990  
    ##  Mean   :0.3668   Mean   :0.3513   Mean   :0.3397   Mean   :0.3285  
    ##  3rd Qu.:0.4700   3rd Qu.:0.4442   3rd Qu.:0.4310   3rd Qu.:0.4135  
    ##  Max.   :1.2460   Max.   :1.2700   Max.   :1.2340   Max.   :1.2620  
    ##        D6               D7               D8               D9        
    ##  Min.   :0.0620   Min.   :0.0600   Min.   :0.0530   Min.   :0.0480  
    ##  1st Qu.:0.2000   1st Qu.:0.1970   1st Qu.:0.1900   1st Qu.:0.1850  
    ##  Median :0.2905   Median :0.2820   Median :0.2770   Median :0.2700  
    ##  Mean   :0.3184   Mean   :0.3114   Mean   :0.3030   Mean   :0.2958  
    ##  3rd Qu.:0.4002   3rd Qu.:0.3922   3rd Qu.:0.3862   3rd Qu.:0.3770  
    ##  Max.   :1.2420   Max.   :1.1520   Max.   :1.1900   Max.   :1.0800  
    ##       D10             VOLUME        
    ##  Min.   :0.0320   Min.   : 0.01444  
    ##  1st Qu.:0.1767   1st Qu.: 0.33826  
    ##  Median :0.2600   Median : 0.84198  
    ##  Mean   :0.2887   Mean   : 1.51581  
    ##  3rd Qu.:0.3700   3rd Qu.: 1.88788  
    ##  Max.   :1.0690   Max.   :15.61983

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both test content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

``` r
summary(cars)
```

    ##      speed           dist       
    ##  Min.   : 4.0   Min.   :  2.00  
    ##  1st Qu.:12.0   1st Qu.: 26.00  
    ##  Median :15.0   Median : 36.00  
    ##  Mean   :15.4   Mean   : 42.98  
    ##  3rd Qu.:19.0   3rd Qu.: 56.00  
    ##  Max.   :25.0   Max.   :120.00

Including Plots
---------------

You can also embed plots, for example:

![](Analyses_files/figure-markdown_github/pressure-1.png)

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
