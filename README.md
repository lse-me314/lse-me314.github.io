# ME314 Introduction to Data Science and Big Data Analytics #


#### LSE Methods Summer Programme 2018

[Kenneth Benoit](kbenoit@lse.ac.uk), Department of Methodology, LSE  
[Slava Mikhaylov](s.mikhaylov@essex.ac.uk), Institute for Analytics and Data Science, University of Essex  
[Jack Blumenau](J.Blumenau@ucl.ac.uk), Department of Political Science, UCL

This repository contains the class materials for the [Research Methods, Data Science, and Mathematics](https://www.lse.ac.uk/study-at-lse/Summer-Schools/Summer-School/Courses/Secure/Research-Methods-Data-Science-and-Mathematics) course [*ME314 Introduction to Data Science and Big Data Analytics*](https://www.lse.ac.uk/study-at-lse/Summer-Schools/Summer-School/Courses/Secure/Research-Methods-Data-Science-and-Mathematics/ME314) taught in July-August 2018 by Kenneth Benoit, Slava Mikhaylov, and Jack Blumenau.  


### Overview

Data Science and Big Data Analytics are exciting new areas that combine scientific inquiry, statistical knowledge, substantive expertise, and computer programming. One of the main challenges for businesses and policy makers when using big data is to find people with the appropriate skills. Good data science requires experts that combine substantive knowledge with data analytical skills, which makes it a prime area for social scientists with an interest in quantitative methods.

This course integrates prior training in quantitative methods (statistics) and coding with substantive expertise and introduces the fundamental concepts and techniques of Data Science and Big Data Analytics.

Typical students will be advanced undergraduate and postgraduate students from any field requiring the fundamentals of data science or working with typically large datasets and databases. Practitioners from industry, government, or research organisations with some basic training in quantitative analysis or computer programming are also welcome. Because this course surveys diverse techniques and methods, it makes an ideal foundation for more advanced or more specific training. Our applications are drawn from social, political, economic, legal, and business and marketing fields.

### Objectives

This course aims to provide an introduction to the data science approach to the quantitative analysis of data using the methods of statistical learning, an approach blending classical statistical methods with recent advances in computational and machine learning. We will cover the main analytical methods from this field with hands-on applications using example datasets, so that students gain experience with and confidence in using the methods we cover. We also cover data preparation and processing, including working with structured databases, key-value formatted data (JSON), and unstructured textual data. At the end of this course students will have a sound understanding of the field of data science, the ability to analyse data using some of its main methods, and a solid foundation for more advanced or more specialised study.  

The course will be delivered as a series of morning lectures, followed by lab sessions in the afternoon where students will apply the lessons in a series of instructor-guided exercises using data provided as part of the exercises. The course will cover the following topics:

- an overview of data science and the challenge of working with big data using statistical methods  
- how to integrate the insights from data analytics into knowledge generation and decision-making  
- how to acquire data, both structured and unstructured, and to process it, store it, and convert it into a format suitable for analysis  
- approaches to normalising data, using a database manager (SQLite), and working with SQL database queries  
- the basics of statistical inference including probability and probability distributions, modelling, experimental design  
- an overview of classification methods and related methods for assessing model fit and cross-validating predictive models  
- supervised learning approaches, including linear and logistic regression, decision trees, and naïve Bayes  
- unsupervised learning approaches, including clustering, association rules, and principal components analysis  
- quantitative methods of text analysis, including mining social media and other online resources  
- social network analysis, covering the basics of social graph data and analysing social networks  
- data visualisation through a variety of graphs.  


### Prerequisites

Students should already be familiar with quantitative methods at an introductory level, up to linear regression analysis. Familiarity with computer programming or database structures is a benefit, but not formally required.


### Preparing for the course

Before the course you should:

* Download and install [R](https://cran.r-project.org) _and_ [RStudio](http://www.rstudio.com) on your computer.

If you are not already familiar with R, we strongly encourage you to attempt to become familiar before the start of the course.  That way, you will spend much less time become familiar with the tools, and be able to focus more on the methods.  The following links provide a basic introduction to R, which you can study at your own pace before the course begins.

* [*An Introduction to R*](https://cran.r-project.org/doc/manuals/r-release/R-intro.pdf).
* Data Camp [R tutorials](https://www.datacamp.com/courses/free-introduction-to-r).
* Data Camp [R Markdown tutorials](https://www.datacamp.com/courses/reporting-with-r-markdown), first chapter.
* [R Codeschool](http://tryr.codeschool.com/).

We strongly recommend you spend some of July and August before the course working through the following materials:

* Garrett Grolemund and Hadley Wickham (2016) _R for Data Science_, O'Reilly Media. Note: Online version is available from the authors' page [here](http://r4ds.had.co.nz/index.html).
* James et al. (2013) _An Introduction to Statistical Learning: With applications in R_, Springer, Chapters 1--2. Note: The book is available from the authors' page [here](http://www-bcf.usc.edu/~gareth/ISL/).

If you start preparing for the course (with the above materials) using your own laptop, it may be more convenient for you to continue using it during the summer school.

### Important Specifics

#### Computer Software

Computer-based exercises will feature prominently in the course, especially in the lab sessions.  The use of all software tools will be explained in the sessions, including how to download and install them.  All of the class work will be done using R, using publicly available packages.


#### Main Texts

The primary texts are:

* James et al. (2013) _An Introduction to Statistical Learning: With applications in R_, Springer. Note: The book is available from the authors' page [here](http://www-bcf.usc.edu/~gareth/ISL/).
* Garrett Grolemund and Hadley Wickham (2016) _R for Data Science_, O'Reilly Media. Note: Online version is available from the authors' page [here](http://r4ds.had.co.nz/index.html).
* Zumel, N. and Mount, J. (2014). _Practical Data Science with R_. Manning Publications.


The following are supplemental texts which you may also find useful:

* Lantz, B. (2013). _Machine Learning with R_. Packt Publishing.
* Lesmeister, C. (2015). _Mastering Machine Learning with R_. Packt Publishing.
* Conway, D. and White, J. (2012) _Machine Learning for Hackers_. O'Reilly Media.
* Leskovec, J., Rajaraman, A. and Ullman, J. (2011). _Mining of Massive Datasets_. Cambridge University Press.
* Zafarani, R., Abbasi, M. A. and Liu, H. (2014) _Social Media Mining: An introduction_. Cambridge University Press.
* Hastie et al. (2009) _The Elements of Statistical Learning: Data mining, inference, and prediction_. Springer. Note: The book is available from the authors' page [here](http://statweb.stanford.edu/~tibs/ElemStatLearn/).



#### Instructions for Submitting Homeworks

Each homework will be a single file in the [RMarkdown](http://rmarkdown.rstudio.com) format.  The files linked below are *named very carefully*, to make it easy for us to identify your completed lab assignments.  

1.  Obtaining the starter files.  

    Each day below will link the name of a starter file for you to download and work with.  These are in the RMarkdown format.  You should embed your answers, with code, into your version of the instruction files.

2.  Renaming the starter files.  

    For example, the first assignment file is named `ME314_assignment1_LASTNAME_FIRSTNAME.Rmd`, which you will need to rename by replacing the uppercase terms with your own last and first names, e.g.  `ME314_assignment1_Bloggs_Joe.Rmd`.

3.  From RStudio, you can create an HTML output file with your evaluated code, figure, and text answers by clicking the "Knit HTML" button in the top of the editor pane in RStudio.  The resulting HTML file will be saved in your working directory.

4.  You will need to upload the resulting HTML file -- renamed! -- to the [course Moodle page](https://shortcourses.lse.ac.uk/course/view.php?id=158), to the appropriate assignment folder.  

We will walk you through this process in the Day 1 lab, so don't worry if it seems complicated the first time.  This sort of careful workflow process and file management is part of learning practical data science too!

We do not mark the homework but we will walk through the solutions at the start of computer labs the following day.


#### Instructions for use of course materials

You have three options for downloading the course material found on this page:  

1.  You can download the materials by clicking on each link.  

2.  You can "clone" repository, using the buttons found to the right side of your browser window as you view this repository.  This is the button labelled "Clone in Desktop".  If you do not have a git client installed on your system, you will need to [get one here](https://git-scm.com/download/gui) and also to make sure that [git is installed](https://git-scm.com/downloads).  This is preferred, since you can refresh your clone as new content gets pushed to the course repository.  (And new material will get actively pushed to the course repository at least once per day as this course takes place.)

3.  Statically, you can choose the button on the right marked "Download zip" which will download the entire repository as a zip file.

You can also subscribe to the repository if you have [a GitHub account](https://github.com), which will send you updates each time new changes are pushed to the repository.

You can read more about using GitHub with RStudio in Hadley Wickham's _R Packages_ [book Chapter 13](http://r-pkgs.had.co.nz/git.html).


### Instructors

**Kenneth Benoit** is Professor of Quantitative Social Research Methods at the Department of Methodology, LSE. With a background in political science, his substantive work focuses on political party competition, political measurement issues, and electoral systems. His research and teaching is primarily in the field of social science statistical applications. His recent work concerns the quantitative analysis of text as data, for which he has developed a package for the R statistical software.


**Slava Mikhaylov** is Professor of Public Policy and Data Science at Institute of Analytics and Data Science and Department of Government, University of Essex. He's a Chief Scientific Advisor to Essex County Council and a co-investigator in an ESRC Big Data infrastructure investment initiative – Consumer Data Research Centre at UCL. His research and teaching is primarily in the field of computational social science and data science.

**Dr. Jack Blumenau** is a Lecturer in Quantitative Methods at the UCL Department of Political Science. he was previously an ESRC "Future Research Leader" post-doc in the Methodology Department at the LSE. His research explores the effects of legislative leaders on the behaviour of parliamentarians in the European Parliament and the UK House of Commons.


### Course Schedule

***

#### __*Monday, 30 July: Overview and introduction to data science [SM,KB]*__
We will use this session to get to know the range of interests and experience students bring to the class, as well as to survey the machine learning approaches to be covered. We will also discuss and demonstrate the R software.

##### Resources
* [Lecture Notes Part 1](day1/ME314_day1.1.pdf)
* [Lecture Notes Part 2](day1/ME314_day1.2.pdf)
* [Assignment 1 as R markdown](day1/ME314_assignment1_LASTNAME_FIRSTNAME.Rmd)
* Assignment 1 **solution** as [R markdown](day1/ME314_assignment1_solution.Rmd)

<!--- * [The results of the data science quiz](http://htmlpreview.github.com/?https://github.com/kbenoit/ME314/blob/master/day1/data_science_quiz.html) and the [anonymized dataset in .csv format](day1/data_science_quiz_results.csv). -->

##### Required reading

* James et al (2013), Chapters 1--2. Note: The book is available from the authors' page [here](http://www-bcf.usc.edu/~gareth/ISL/).
* [*An Introduction to R*](https://cran.r-project.org/doc/manuals/r-release/R-intro.pdf).
* Downloading and installing [RStudio](http://www.rstudio.com) and [R](https://cran.r-project.org) on your computer.
* Data Camp [R tutorials](https://www.datacamp.com/courses/free-introduction-to-r).
* Data Camp [R Markdown tutorials](https://www.datacamp.com/courses/reporting-with-r-markdown), first chapter.
* [R Codeschool](http://tryr.codeschool.com/).
* Garrett Grolemund and Hadley Wickham (2016) _R for Data Science_, O'Reilly Media, Chapters 1-3. Note: Online version is available from the authors' page [here](http://r4ds.had.co.nz/index.html).


##### Recommended Reading

* Patrick Burns, 2011. _The R Inferno_.  Available [here](http://www.burns-stat.com/pages/Tutor/R_inferno.pdf).
* Lantz, Ch. 2.

***

#### __*Tuesday, 31 July: The Shape of Data [KB]*__

This week introduces the concept of data "beyond the spreadsheet", the rectangular format most common in statistical datasets.  It covers relational structures and the concept of database normalization.  We will also cover ways to restructure data from "wide" to "long" format, within strictly rectangular data structures.  Additional topics concerning text encoding, date formats, and sparse matrix formats are also covered.


##### Resources

* [Lecture Notes](day2/)
* [Assignment 2 as R markdown](day2/ME314_assignment2_LASTNAME_FIRSTNAME.Rmd)
* Assignment 2 **solution** as [R markdown](day2/ME314_assignment2_solution.Rmd)
* [Altaf's resource on **dplyr** and the "tidyverse"](https://altaf-ali.github.io/tidydata_tutorial)
* [Altaf's resource on **ggplot2**](https://altaf-ali.github.io/ggplot_tutorial)

##### Required reading

* Wickham, Hadley and Garett Grolemund.  2017.  _R for Data Science: Import, Tidy, Transform, Visualize, and Model Data_.  Sebastopol, CA: O'Reilly.  [Part II Wrangle](http://r4ds.had.co.nz/wrangle-intro.html), [Tibbles](http://r4ds.had.co.nz/tibbles.html), [Data Import](http://r4ds.had.co.nz/data-import.html), [Tidy Data](http://r4ds.had.co.nz/tidy-data.html) (Ch. 7-9 of the print edition).


##### Recommended Reading

* Reshaping data in Python: "[Reshaping and Pivot Tables](https://pandas.pydata.org/pandas-docs/stable/reshaping.html)".
* Robin Linderborg, "[Reshaping Data in Python](https://hackernoon.com/reshaping-data-in-python-fa27dda2ff77)", 20 Jan 2017.

***

#### __*Wednesday, 1 August: Working with Databases [KB*__]

We will return to database normalization, and how to implement this using good practice in a relational database manager, SQLite.  We will cover how to structure data, verify data types, set conditions for data integrity, and perform complex queries to extract data from the database.  We will also cover authentication and how to connect to local and remote databases.   

##### Resources

* [Lecture Notes](day3/)
* [Assignment 3 as R markdown](day3/ME314_assignment3_LASTNAME_FIRSTNAME.Rmd)
* Assignment 3 **solution** as [R markdown](day3/ME314_assignment3_solution.Rmd)

##### Required reading

*	Lake, Peter.  _Concise Guide to Databases: A Practical Introduction_. Springer, 2013.  Chapters 4-5, Relational Databases and NoSQL databases.
*	Nield, Thomas. _Getting Started with SQL: A hands-on approach for beginners_. O’Reilly, 2016.  Entire text.

##### Recommended Reading

* [SQLite documentation](https://www.sqlite.org/docs.html).
*   Bassett, L. 2015.  [_Introduction to JavaScript Object Notation: A to-the-point Guide to JSON_](http://shop.oreilly.com/product/0636920041597.do).  O'Reilly Media, Inc.

***

#### __*Thursday, 2 August: Linear Regression [KB]*__

Linear regression model and supervised learning.

##### Resources

* [Lecture Notes](day4/ME314_day4.pdf)
* [Assignment 4 as R markdown](day4/ME314_assignment4_LASTNAME_FIRSTNAME.Rmd)
* Assignment 4 **solution** as [R markdown](day4/ME314_assignment4_solution.Rmd)

##### Required Reading

*  James et al., Chapter 3.

##### Recommended Reading

* Zumel and Mount, Chapter 7.1.
* Lantz, Chapter 6

***

#### __*Monday, 6 August: Classification [SM]*__
Logistic regression, discriminant analysis, Naive Bayes, evaluating model performance.

##### Resources

* [Lecture Notes](day4/ME314_day4.pdf)
* [Assignment 4 as R markdown](day4/ME314_assignment4_LASTNAME_FIRSTNAME.Rmd)
* Assignment 4 **solution** as [R markdown](day4/ME314_assignment4_solution.Rmd)

##### Required Reading

* James et al., Chapter 4.

##### Recommended Reading

* Lesmeister, Chapter 3.
* Zumel and Mount, Chapters 5, 6, 7.2.
* Lantz, Chapters 3-4, 10.

***

#### __*Tuesday, 7 August: Resampling methods, model selection and regularization [SM]*__
Cross-validation, bootstrap, ridge and lasso.

##### Resources

* [Lecture Notes](day6/ME314_day6.pdf)
* [Assignment 6 as R markdown](day6/ME314_assignment6_LASTNAME_FIRSTNAME.Rmd)
* Assignment 6 **solution** as [R markdown](day6/ME314_assignment6_solution.Rmd)
* [Dataverse replication example for PCR](http://dx.doi.org/10.7910/DVN/AER5QJ)

##### Required Reading

* James et al., Chapter 5-6.

##### Recommended Reading

* Lesmeister, Chapter 4.

***

#### __*Wednesday, 8 August: Non-linear models and tree-based methods [SM]*__
GAMs, local regression, decision trees, random forest, boosting.

##### Resources

* [Lecture Notes](day7/ME314_day8.pdf)
* [RandomForest research example](day7/example_random_forest_Ukraine.pdf)
* [Assignment 7 as R markdown](day6/ME314_assignment7_LASTNAME_FIRSTNAME.Rmd)
* Assignment 7 **solution** as [R markdown](day7/ME314_assignment6_solution.Rmd)

##### Required Reading

* James et al., Chapter 7-8.

##### Recommended Reading

* Lesmeister, Chapter 6.
* Zumel and Mount, Chapter 9.1-9.3.
* Muchlinksi, D., Siroky, D., Jingrui, H., Kocher, M., (2016) "Comparing Random Forest with Logistic Regression for Predicting Class-Imbalanced Civil War Onset Data." _Political Analysis_, 24(1): 87-103.

***

#### __*Thursday, 9 August: Unsupervised learning and dimensional reduction [KB]*__
Cluster analysis, PCA, correspondence analysis, association rules.

##### Resources

* [Lecture Notes](day7/ME314_day7.pdf)
* [Application example: smart meter analysis Notes](day7/application_example_clustering_rforest.pdf)
* [Assignment 7 as R markdown](day7/ME314_assignment7_LASTNAME_FIRSTNAME.Rmd)
* Assignment 7 **solution** as [R markdown](day7/ME314_assignment7_solution.Rmd)

##### Required reading

* James et al., Chapter 10.

##### Recommended Reading

* Lesmeister, Chapter 5, 8-9.
* Zumel and Mount, Chapter 8.
* Lantz, Chapters 8-9
* Leskovec et al., Chapter 11.

***

#### __*Monday, 13 August: Text analysis [JB]*__
Working with text in R, sentiment analysis, dictionary methods.

##### Resources

* [Lecture Notes](day9/ME314_day9.pdf)
* [Assignment 9 as R markdown](day9/ME314_assignment9_LASTNAME_FIRSTNAME.Rmd) or [html](http://htmlpreview.github.io/?https://github.com/kbenoit/ME314/blob/master/day9/ME314_assignment8_LASTNAME_FIRSTNAME.html)
    + sample zip file [`UKimmigTexts.zip`](day9/UKimmigTexts.zip) of texts for building a corpus
* Assignment 9 **solution** as [R markdown](day9/ME314_assignment9_solution.Rmd)

##### Required reading

* Grimmer, J, and B M Stewart (2013), ``Text as Data: the Promise and Pitfalls of Automatic Content Analysis Methods for Political Texts.'' _Political Analysis_.
* Benoit, Kenneth and Alexander Herzog. In press. [``Text Analysis: Estimating Policy Preferences From Written and Spoken Words.''](http://www.kenbenoit.net/pdfs/HerzogBenoit_bookchapter.pdf).'' In _Analytics, Policy and Governance_, eds. Jennifer Bachner, Kathyrn Wagner Hill, and Benjamin Ginsberg.

##### Recommended Reading

* Spirling, A. (2012), ``U.S. Treaty Making with American Indians: Institutional Change and Relative Power, 1784–1911.'' _American Journal of Political Science_, 56: 84--97.
* Herzog, A. and K. Benoit (2015), ``The most unkindest cuts: Speaker selection and expressed government dissent during economic crisis.'' _Journal of Politics_, 77(4):1157--1175.

***

#### __*Tuesday, 14 August: Topic modelling [JB]*__

Latent Dirichlet Allocation, Correlated Topic Model, Structural Topic Model.

##### Resources

* [Lecture Notes](day10/ME314_day10.pdf)
* [Assignment 10 as R markdown](day10/ME314_assignment10_LASTNAME_FIRSTNAME.Rmd)
* Assignment 10 **solution** as [R markdown](day10/ME314_assignment10_solution.Rmd)


##### Required reading

* David Blei (2012). "Probabilistic topic models."" _Communications of the ACM_, 55(4): 77-84.
* Blei, David, Andrew Y. Ng, and Michael I. Jordan (2003). "Latent dirichlet allocation." _Journal of Machine Learning Research_ 3: 993-1022.
* Blei, David (2014) "Build, Compute, Critique, Repeat: Data Analysis with Latent Variable Models." _Annual Review of Statistics and Its Application_, 1: 203-232.

##### Recommended Reading

* Blei, D. and J. Lafferty "Topic Models." In _Text Mining: Classification, clustering, and applications_, A. Srivastava and M. Sahami (eds.), pp 71-94, 2009. Chapter available [here](http://www.cs.princeton.edu/~blei/papers/BleiLafferty2009.pdf).
* Blei, David M., and John D. Lafferty. "Dynamic topic models." In _Proceedings of the 23rd international conference on machine learning_, pp. 113-120. ACM, 2006.
* Mimno, D. (April 2012). "Computational Historiography: Data Mining in a Century of Classics Journals." _Journal on Computing and Cultural Heritage_, 5 (1).
* Lesmeister Chapter 12.

***

#### __*Wednesday, 15 August: Mining the Social Web [JB]*__
Working with the Twitter API, Facebook API, JSON data, and examples.

##### Resources

* [Lecture Notes](day11/ME314_day11.pdf)
* [General examples from the lecture](day11/day11examples_noKeys.R)
* [Streaming example code](day11/streamRExample.R)
* [Rest Example code](day11/restExample.R)
* [Assignment 11 as R markdown](day11/ME314_assignment11_LASTNAME_FIRSTNAME.Rmd).  

##### Required reading:

* Broniatowski, David A, Michael J Paul, and Mark Dredze. 2013. "National and Local Influenza Surveillance Through Twitter: an Analysis of the 2012-2013 Influenza Epidemic" _PLoS ONE_ 8(12): 83672–78. [PDF here](day11/Broniatowski.pdf)
* Twitter Authentication setup:
    + [Official](https://dev.twitter.com/oauth/overview/application-owner-access-tokens)
    + [Walkthrough](http://wiki.communitydata.cc/Twitter_authentication_setup)  
* Twitter API documentation:
    + [Overview of REST API](https://dev.twitter.com/rest/public)
    + [Overview of streaming API](https://dev.twitter.com/streaming/overview)


##### Recommended Reading

* [Earthquake shakes Twitter users: real-time event detection by social sensors](day11/Sakaki_Earthquake.pdf)
* http://rcrastinate.blogspot.co.uk/2015/02/mapping-world-with-tweets-including-gif.html
* https://github.com/twitter/AnomalyDetection
* https://github.com/pablobarbera/streamR
* Zafarani et al., Chapters 1-4.
* Matthew Russell (2013). _Mining the Social Web_. O'Reilly Media. 2nd edition.

***

#### __*Thursday, 16 August: Network Analysis [JB]*__

Working with network data, network data types, centrality measures.

##### Required reading

* Stephen Borgatti, Ajay Mehra, Daniel Brass, Giuseppe Labianca. 2009. "Network Analysis in the Social Sciences" _Science_ 323, 892-895

##### Recommended Reading

* [Using Metadata to Find Paul Revere](https://kieranhealy.org/blog/archives/2013/06/09/using-metadata-to-find-paul-revere/)
* G. Erkan and D. Radev. 2004. "LexRank: Graph-based lexical centrality as salience in text summarization" _Journal of Artificial Intelligence Research_ 22, 457 - 479
* Miller McPherson, Lynn Smith-Lovin, and James M Cook. 2001. "Birds of a Feather: Homophily in Social Networks" _Annual Review of Sociology_ 27, 415-44

***

### Assessment

#### __Exam: Friday, 17 August, Time and Room TBC__

* __Instructions:__  Complete and submit the exam just as you would any lab assignment: by renaming the file, editing the R Markdown, knitting, and submitting through Moodle your knitted HTML file.
* __Formatting:__  Put your own textual answers in boldface (using `**boldface type**` in RMarkdown), so that we can easily identify them when reviewing your HTML file.
* __Deadline:__ Monday 20 August 17:00 London time (GMT+1)
