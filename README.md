#### LSE Methods Summer Programme 2023

London School of Economics and Political Science

Instructors

*  Kenneth Benoit ([K.R.Benoit@lse.ac.uk](K.R.Benoit@lse.ac.uk)), Department of Methodology, LSE  
*  Jack Blumenau ([j.blumenau@ucl.ac.uk](j.blumenau@ucl.ac.uk)), Department of Political Science, UCL  

TAs

*  Stuart Bramwell ([S.Bramwell@lse.ac.uk](S.Bramwell@lse.ac.uk)), LSE/Royal Holloway
*  Michael Jacobs ([michael.jacobs.21@ucl.ac.uk](michael.jacobs.21@ucl.ac.uk)), UCL  
*  Wendy Wang ([w.wang75@lse.ac.uk](w.wang75@lse.ac.uk)), LSE  

Moodle

* Moodle page [here](https://shortcourses.lse.ac.uk/course/view.php?id=158)
* Moodle enrollment key: ME31423


This repository contains the class materials for the [Research Methods, Data Science, and Mathematics](https://www.lse.ac.uk/study-at-lse/Summer-Schools/Summer-School/Courses/Secure/Research-Methods-Data-Science-and-Mathematics) course [*ME314 Introduction to Data Science and Machine Learning*](https://www.lse.ac.uk/study-at-lse/Summer-Schools/Summer-School/Courses/Secure/Research-Methods-Data-Science-and-Mathematics/ME314) taught in July 2023 by Kenneth Benoit and Jack Blumenau.  

### Quick links to topics

| Day | Date      | Instructor | Topic |
|:---:|:----------|:-----------|:------|
| 1  | Mo 10 Jul  | KB         | [Overview and introduction to data science](#1-overview-and-introduction-to-data-science) |
| 2  | Tu 11 Jul  | KB         | [The Shape of Data](#2-the-shape-of-data) |
| 3  | We 12 Jul  | KB         | [Working with Data (continued)](#3-working-with-databases) |
| 4  | Th 13 Jul  | KB         | [Linear Regression](#4-linear-regression) |
| 5  | Mo 17 Jul  | KB         | [Classification](#5-classification) |
| 6  | Tu 18 Jul  | KB         | [Non-linear models and tree-based methods](#6-non-linear-models-and-tree-based-methods) |
| 7  | We 19 Jul  | JB         | [Resampling methods, model selection and regularization](#7-resampling-methods-model-selection-and-regularization) |
| 8  | Th 20 Jul   | JB         | [Unsupervised learning and dimensional reduction](#8-unsupervised-learning-and-dimensional-reduction) |
| 9  | Mo 24 Jul   | JB         | [Text analysis](#9-text-analysis) |
| 10 | Tu 25 Jul   | JB         | [Text classification and scaling](#10-text-classification-and-scaling) |
| 11 | We 26 Jul   | JB         | [Topic modelling](#11-topic-modelling)|
| 12 | Th 27 Jul   | JB         | [Data from the Web](#12-data-from-the-web) |
| 13 | Fr 28 Jul   |            | [Final Exam](#assessment) |


### Overview

Data science and machine learning are exciting new areas that combine scientific inquiry, statistical knowledge, substantive expertise, and computer programming. One of the main challenges for businesses and policy makers when using big data is to find people with the appropriate skills. Good data science requires experts that combine substantive knowledge with data analytical skills, which makes it a prime area for social scientists with an interest in quantitative methods.

This course integrates prior training in quantitative methods (statistics) and coding with substantive expertise and introduces the fundamental concepts and techniques of data science and machine learning.

Typical students will be advanced undergraduate and postgraduate students from any field requiring the fundamentals of data science or working with typically large datasets and databases. Practitioners from industry, government, or research organisations with some basic training in quantitative analysis or computer programming are also welcome. Because this course surveys diverse techniques and methods, it makes an ideal foundation for more advanced or more specific training. Our applications are drawn from social, political, economic, legal, and business and marketing fields.

### Objectives

This course aims to provide an introduction to the quantitative analysis of data using the methods of statistical learning, an approach blending classical statistical methods with recent advances in computational and machine learning. We will cover the main analytical methods from this field with hands-on applications using example datasets, so that students gain experience with and confidence in using the methods we cover. We also cover data preparation and processing, including working with structured databases, key-value formatted data (JSON), and unstructured textual data. At the end of this course students will have a sound understanding of the field of data science, the ability to analyse data using some of its main methods, and a solid foundation for more advanced or more specialised study.  

The course will be delivered as a series of morning lectures (held from 10am to 1pm, with an extended break in the middle), followed by lab sessions in the afternoon where students will apply the lessons in a series of instructor-guided exercises using data provided as part of the exercises. The course will cover the following topics:

- an overview of data science and the challenge of working with big data using statistical methods  
- how to integrate the insights from data analytics into knowledge generation and decision-making  
- how to acquire data, both structured and unstructured, and to process it, store it, and convert it into a format suitable for analysis  
- the basics of statistical inference including probability and probability distributions, modelling, experimental design  
- an overview of classification methods and related methods for assessing model fit and cross-validating predictive models  
- supervised learning approaches, including linear and logistic regression, decision trees, and naïve Bayes  
- unsupervised learning approaches, including clustering, association rules, and principal components analysis  
- quantitative methods of text analysis, including mining social media and other online resources  
- data visualisation through a variety of graphs.  

<!---- approaches to normalising data, using a database manager (SQLite), and working with SQL database queries ---->  
<!---- social network analysis, covering the basics of social graph data and analysing social networks  --->

## Lectures and classes

- Lectures: Lectures will be held between 10am and 1pm each day. 

- Classes: Students will be assigned to four classes, which will be held between 2pm-3.30pm and 3.30pm-5pm each day
    
See the [Moodle site for ME314](https://shortcourses.lse.ac.uk/course/view.php?id=158) for class lists, Zoom links, and announcements.

### Prerequisites

Students should already be familiar with quantitative methods at an introductory level, up to linear regression analysis. Familiarity with computer programming or database structures is a benefit, but not formally required.

### Preparing for the course

You will need R and RStudio for this course. You will need to download and install [R](https://cran.r-project.org) and [RStudio](http://www.rstudio.com) on your computer.  

**Detailed instructions can also be found [here](https://lse-me314.github.io/instructions) for installing the tools you need and working with the lab materials.**

If you are not already familiar with R, we strongly encourage you to attempt to become familiar before the start of the course.  That way, you will spend much less time become familiar with the tools, and be able to focus more on the methods.  The following links provide basic introductions to R, which you can study at your own pace before the course begins.

* [*An Introduction to R*](https://cran.r-project.org/doc/manuals/r-release/R-intro.pdf).
* Data Camp [R tutorials](https://www.datacamp.com/courses/free-introduction-to-r).
* Data Camp [R Markdown tutorials](https://www.datacamp.com/courses/reporting-with-r-markdown), first chapter.
* [R Codeschool](http://tryr.codeschool.com/).

We also strongly recommend you spend some time before the course working through the following materials:

* Garrett Grolemund and Hadley Wickham (2016) _R for Data Science_, O'Reilly Media. Note: Online version is available from the authors' page [here](http://r4ds.had.co.nz/index.html).
* James et al. (2021) _An Introduction to Statistical Learning: With applications in R_, Springer. Particularly chapters 1 and 2. Note: The book is available free online [here](https://www.statlearning.com).

### Important Specifics

#### Computer Software

Computer-based exercises will feature prominently in the course, especially in the lab sessions.  The use of all software tools will be explained in the sessions, including how to download and install them.  All of the class work will be done using R, using publicly available packages.

#### Main Texts

The primary texts are:

* James et al. (2021) _An Introduction to Statistical Learning: With applications in R_, Springer. Note: The book is available free online [here](https://www.statlearning.com).
* Garrett Grolemund and Hadley Wickham (2016) _R for Data Science_, O'Reilly Media. Note: Online version is available from the authors' page [here](http://r4ds.had.co.nz/index.html).
* Zumel, N. and Mount, J. (2014). _Practical Data Science with R_. Manning Publications.

The following are supplemental texts which you may also find useful:

* Lantz, B. (2013). _Machine Learning with R_. Packt Publishing.
* Lesmeister, C. (2015). _Mastering Machine Learning with R_. Packt Publishing.
* Conway, D. and White, J. (2012) _Machine Learning for Hackers_. O'Reilly Media.
* Leskovec, J., Rajaraman, A. and Ullman, J. (2011). _Mining of Massive Datasets_. Cambridge University Press.
* Zafarani, R., Abbasi, M. A. and Liu, H. (2014) _Social Media Mining: An introduction_. Cambridge University Press.
* Hastie et al. (2009) _The Elements of Statistical Learning: Data mining, inference, and prediction_. Springer. Note: The book is available from the authors' page [here](http://statweb.stanford.edu/~tibs/ElemStatLearn/).


### Instructors

**Kenneth Benoit** is Director of the Data Science Institute and Professor of Computational Social Science at the Department of Methodology, LSE. With a background in political science, his substantive work focuses on political party competition, political measurement issues, and electoral systems. His research and teaching is primarily in the field of social science statistical applications. His recent work concerns the quantitative analysis of text as data, for which he has developed the package(s) [**quanteda**](https://quanteda.io) for the R statistical software.

**Jack Blumenau** is an Associate Professor in Quantitative Methods at the UCL Department of Political Science and is the Programme Director for the [*MSc in Data Science and Public Policy*](https://www.ucl.ac.uk/economics/study/msc-data-science-and-public-policy) at UCL. He is also a member of the UK Cabinet Office's "What Works" Trial Advice Panel, in which he provides data science expertise to government and was previously a Data Science Advisor to YouGov. His research and teaching are primary in the fields of quantitative methods, public opinion, legislative politics, and electoral politics.


### Assessment

#### Daily lab exercises

These are not assessed, but will form the practical materials for each day's labs.  See these instructions for how to access and work with each day's exercise.

See [https://lse-me314.github.io/instructions](https://lse-me314.github.io/instructions) for detailed instructions on obtaining and working with each day's lab materials.

#### Mid-term

The class assignment for Day 5 will count as the mid-term assignment, which will count for 25% of the grade. The midterm will be released after the lecture on Day 5 (Monday 17th July) and will be due at 7pm on Day 7 (Wednesday 19th July). <!--- The [mid-term is available here](https://lse-me314.github.io/midterm-2019/).--->

#### Exam

The final exam will be set on Friday 28th July.  

<!---[The exam is here](https://lse-me314.github.io/finalexam/).---> 

#### Slack

We have a Slack workspace for the course which you should use to communicate both with us as instructors, and with your fellow students. You can sign up via this link: https://tinyurl.com/2023ME314

### Detailed Course Schedule

***

#### 1. Overview and introduction to data science

We will use this session to get to know the range of interests and experience students bring to the class, as well as to survey the machine learning approaches to be covered. We will also discuss and demonstrate the R software.

##### Resources

* [Lecture Notes Part 1](lecturenotes/ME314_day1.1.pdf)
* [Lecture Notes Part 2](lecturenotes/ME314_day1.2.pdf)
* [Lab 1 materials](https://lse-me314.github.io/assignment01/)

* Lab 1 solution [as RMarkdown](https://lse-me314.github.io/solutions/ME314_assignment1_solution.Rmd) or [as HTML](https://lse-me314.github.io/solutions/ME314_assignment1_solution.html)


##### Required reading

* James et al (2021), Chapters 1--2. Note: The book is available [here](https://www.statlearning.com).
* Garrett Grolemund and Hadley Wickham (2016) _R for Data Science_, O'Reilly Media, Chapters 1-3. Note: Online version is available from the authors' page [here](http://r4ds.had.co.nz/index.html).
* [*An Introduction to R*](https://cran.r-project.org/doc/manuals/r-release/R-intro.pdf).
* Downloading and installing [RStudio](http://www.rstudio.com) and [R](https://cran.r-project.org) on your computer.
* Data Camp [R tutorials](https://www.datacamp.com/courses/free-introduction-to-r).
* Data Camp [R Markdown tutorials](https://www.datacamp.com/courses/reporting-with-r-markdown), first chapter.
* [R Codeschool](http://tryr.codeschool.com/).


##### Recommended Reading

* Patrick Burns, 2011. _The R Inferno_.  Available [here](http://www.burns-stat.com/pages/Tutor/R_inferno.pdf).
* Lantz, Ch. 2.

***

#### 2. The shape of data

This week introduces the concept of data "beyond the spreadsheet", the rectangular format most common in statistical datasets.  It covers relational structures and the concept of database normalization.  We will also cover ways to restructure data from "wide" to "long" format, within strictly rectangular data structures.  Additional topics concerning text encoding, date formats, and sparse matrix formats are also covered.

##### Resources

* [Lecture Notes Part 1](lecturenotes/ME314_day2.pdf)
* [Lab 2 materials](https://lse-me314.github.io/assignment02/)


* Lab 2 solution [as RMarkdown](https://lse-me314.github.io/solutions/ME314_assignment2_solution.Rmd) or [as HTML](https://lse-me314.github.io/solutions/ME314_assignment2_solution.html).

##### Required reading

* Wickham, Hadley and Garett Grolemund.  2017.  _R for Data Science: Import, Tidy, Transform, Visualize, and Model Data_.  Sebastopol, CA: O'Reilly.  [Part II Wrangle](http://r4ds.had.co.nz/wrangle-intro.html), [Tibbles](http://r4ds.had.co.nz/tibbles.html), [Data Import](http://r4ds.had.co.nz/data-import.html), [Tidy Data](http://r4ds.had.co.nz/tidy-data.html) (Ch. 7-9 of the print edition; Ch. 9-12 online).


##### If you use Python, these references may help

* Reshaping data in Python: "[Reshaping and Pivot Tables](https://pandas.pydata.org/pandas-docs/stable/reshaping.html)".
* Robin Linderborg, "[Reshaping Data in Python](https://hackernoon.com/reshaping-data-in-python-fa27dda2ff77)", 20 Jan 2017.

***

#### 3. Working with data (continued)

This day will continue with data manipulation and reshaping.  We will cover alternative data formats including JSON, and how to make use of it.  We will introduce the concept of databases and SQL, although we will not cover this using SQL directly.  Depending on time, we will move on to Day 4 material in preparation for next week and the mid-term released on Day 5.

##### Resources

* [Lecture Notes](lecturenotes/ME314_day3.pdf)
* [Lab 3 materials](https://lse-me314.github.io/assignment03/)


<!--- * Lab 3 solution [as RMarkdown](https://lse-me314.github.io/solutions/ME314_assignment3_solution.Rmd) or [as HTML](https://lse-me314.github.io/solutions/ME314_assignment3_solution.html). ---->

##### Required reading

Continue with the Day 2 reading from Wickhama and Grolemund (2017).

##### Recommended Reading

* Lake, Peter.  _Concise Guide to Databases: A Practical Introduction_. Springer, 2013.  Chapters 4-5, Relational Databases and NoSQL databases.
* Nield, Thomas. _Getting Started with SQL: A hands-on approach for beginners_. O’Reilly, 2016.  Entire text.
* [SQLite documentation](https://www.sqlite.org/docs.html).
*   Bassett, L. 2015.  [_Introduction to JavaScript Object Notation: A to-the-point Guide to JSON_](http://shop.oreilly.com/product/0636920041597.do).  O'Reilly Media, Inc.

***

#### 4. Linear regression

Linear regression model and supervised learning.

##### Resources

* [Lecture Notes](lecturenotes/ME314_day4.pdf)
* [Lab 4 materials](https://lse-me314.github.io/assignment04/)


<!---- * Lab 4 solution [as RMarkdown](https://lse-me314.github.io/solutions/ME314_assignment4_solution.Rmd) or [as HTML](https://lse-me314.github.io/solutions/ME314_assignment4_solution.html). ---->

##### Required Reading

*  James et al., Chapter 3.

##### Recommended Reading

* Zumel and Mount, Chapter 7.1.
* Lantz, Chapter 6

***

#### 5. Classification

Logistic regression, Naive Bayes, evaluating model performance.

##### Resources

<!----  
* [Lecture Notes](lecturenotes/ME314_day5.pdf)
* [Lab 5 materials](https://lse-me314.github.io/assignment05/)

The **mid-term exam** will be posted on [Moodle](https://shortcourses.lse.ac.uk/course/view.php?id=158).
----->

##### Required Reading

* James et al., Chapter 4.

##### Recommended Reading

* Lesmeister, Chapter 3.
* Zumel and Mount, Chapters 5, 6, 7.2.
* Lantz, Chapters 3-4, 10.

***

#### 6. Non-linear models and tree-based methods

GAMs, local regression, decision trees, random forest, bagging.

##### Resources

<!----  
* [Lecture Notes](lecturenotes/ME314_day6.pdf)
* [Lab 6 materials](https://lse-me314.github.io/assignment06/)
---->

<!---- * Lab 6 solution [as RMarkdown](https://lse-me314.github.io/solutions/ME314_assignment6_solution.Rmd) or [as HTML](https://lse-me314.github.io/solutions/ME314_assignment6_solution.html). ---->


##### Required Reading

* James et al., Chapter 7-8.

##### Recommended Reading

* Lesmeister, Chapter 6.
* Zumel and Mount, Chapter 9.1-9.3.
* Muchlinksi, D., Siroky, D., Jingrui, H., Kocher, M., (2016) "Comparing Random Forest with Logistic Regression for Predicting Class-Imbalanced Civil War Onset Data." _Political Analysis_, 24(1): 87-103.

***

#### 7. Resampling methods, model selection and regularization

Cross-validation, bootstrap, ridge and lasso.

##### Resources


<!----  
* [Lecture Notes](lecturenotes/ME314_day7.pdf)
* [Lab 7 materials](https://lse-me314.github.io/assignment07/)
----->

<!---- * Lab 7 solution [as RMarkdown](https://lse-me314.github.io/solutions/ME314_assignment7_solution.Rmd) or [as HTML](https://lse-me314.github.io/solutions/ME314_assignment7_solution.html).---->

<!---

* [Lecture Notes](lecturenotes/ME314_day7.pdf)
* [Lab 7 materials](https://lse-me314.github.io/assignment07/)
* Lab 7 solution [as RMarkdown](https://lse-me314.github.io/solutions/ME314_assignment7_solution.Rmd) or [as HTML](https://lse-me314.github.io/solutions/ME314_assignment7_solution.html).

--->

##### Required Reading

* James et al., Chapter 5-6.

##### Recommended Reading

* Lesmeister, Chapter 4.


***

#### 8. Unsupervised learning and dimensional reduction

Cluster analysis, PCA

##### Resources

<!----  
* [Lecture Notes](lecturenotes/ME314_day8.pdf)
* [Lab 8 materials](https://lse-me314.github.io/assignment08/)
---->

<!---- * Lab 8 solution [as RMarkdown](https://lse-me314.github.io/solutions/ME314_assignment8_solution.Rmd) or [as HTML](https://lse-me314.github.io/solutions/ME314_assignment8_solution.html). ---->

##### Required reading

* James et al., Chapter 12.

##### Recommended Reading

* Lesmeister, Chapter 5, 8-9.
* Zumel and Mount, Chapter 8.
* Lantz, Chapters 8-9
* Leskovec et al., Chapter 11.

***

#### 9. Text analysis

Working with text in R, sentiment analysis, dictionary methods.

##### Resources

<!----  
* [Lecture Notes](lecturenotes/ME314_day9.pdf)
* [Lab 9 materials](https://lse-me314.github.io/assignment09/)
----->

<!---- * Lab 9 solution [as RMarkdown](https://lse-me314.github.io/solutions/ME314_assignment9_solution.Rmd) or [as HTML](https://lse-me314.github.io/solutions/ME314_assignment9_solution.html). ---->

##### Required reading

* Grimmer, J, and B M Stewart (2013), [``Text as Data: the Promise and Pitfalls of Automatic Content Analysis Methods for Political Texts.''](https://web.stanford.edu/~jgrimmer/tad2.pdf) _Political Analysis_.
* Benoit, Kenneth and Alexander Herzog. In press. [``Text Analysis: Estimating Policy Preferences From Written and Spoken Words.''](http://www.kenbenoit.net/pdfs/HerzogBenoit_bookchapter.pdf).'' In _Analytics, Policy and Governance_, eds. Jennifer Bachner, Kathyrn Wagner Hill, and Benjamin Ginsberg.

##### Recommended Reading

* Denny, M.J. and Spirling, A. (2018),[``Text Preprocessing For Unsupervised Learning: Why It Matters, When It Misleads, And What To Do About It''](https://www.cambridge.org/core/journals/political-analysis/article/text-preprocessing-for-unsupervised-learning-why-it-matters-when-it-misleads-and-what-to-do-about-it/AA7D4DE0AA6AB208502515AE3EC6989E) _Political Analysis_
* Spirling, A. (2012), [``Democratization and Linguistic Complexity: The Effect of Franchise Extension on Parliamentary Discourse, 1832–1915.''](https://www.journals.uchicago.edu/doi/abs/10.1086/683612) _Journal of Politics_
* Herzog, A. and K. Benoit (2015), ``The most unkindest cuts: Speaker selection and expressed government dissent during economic crisis.'' _Journal of Politics_, 77(4):1157--1175.
* Benoit, K., Munger, K., and Spirling, A.  [``Measuring and Explaining Political Sophistication Through Textual Complexity.''](https://onlinelibrary.wiley.com/doi/full/10.1111/ajps.12423), _American Journal of Political Science_ 63(2, April): 491–508. 10.1111/ajps.12423.


***

#### 10. Text classification and scaling

Naive Bayes classifier, Wordscores, and Wordfish.

##### Resources

<!----  
* [Lecture Notes](lecturenotes/ME314_day10.pdf)
* [Lab 10 materials](https://lse-me314.github.io/assignment10/)
---->

<!--- * Lab 10 solution [as RMarkdown](https://lse-me314.github.io/solutions/ME314_assignment10_solution.Rmd) or [as HTML](https://lse-me314.github.io/solutions/ME314_assignment10_solution.html). --->


##### Required reading

Laver, M., Benoit, K., & Garry, J. (2003). Extracting Policy Positions from Political Texts Using Words as Data. American Political Science Review, 97(2), 311-331. doi:10.1017/S0003055403000698

Slapin, J. B. and Proksch, S. (2008), A Scaling Model for Estimating Time‐Series Party Positions from Texts. American Journal of Political Science, 52: 705-722. doi:10.1111/j.1540-5907.2008.00338.x

##### Recommended Reading

* [Statsoft, "Naive Bayes Classifier Introductory Overview."](http://www.statsoft.com/textbook/naive-bayes-classifier)
* An [online article by Paul Graham on classifying spam e-mail](http://www.paulgraham.com/spam.html).
* Bionicspirit.com, 9 Feb 2012, ["How to Build a Naive Bayes Classifier."](http://bionicspirit.com/blog/2012/02/09/howto-build-naive-bayes-classifier.html)
* Lowe, W. (2008). Understanding wordscores. Political Analysis, 16(4), 356-371.
* Benoit, Kenneth and Paul Nulty. 2013. “Classification Methods for Scaling Latent Political Traits.”
Presented at the Annual Meeting of the Midwest Political Science Association, April 11–14,
Chicago.

***

#### 11. Topic modelling

Latent Dirichlet Allocation, Correlated Topic Model, Structural Topic Model.

##### Resources

<!----  
* [Lecture Notes](lecturenotes/ME314_day11.pdf)
* [Lab 11 materials](https://lse-me314.github.io/assignment11/)
---->

<!---- * Lab 11 solution [as RMarkdown](https://lse-me314.github.io/solutions/ME314_assignment11_solution.Rmd) or [as HTML](https://lse-me314.github.io/solutions/ME314_assignment11_solution.html). ---->


##### Required reading

* David Blei (2012). "Probabilistic topic models."" _Communications of the ACM_, 55(4): 77-84.
* Blei, David, Andrew Y. Ng, and Michael I. Jordan (2003). "Latent dirichlet allocation." _Journal of Machine Learning Research_ 3: 993-1022.
* Blei, David (2014) "Build, Compute, Critique, Repeat: Data Analysis with Latent Variable Models." _Annual Review of Statistics and Its Application_, 1: 203-232.

##### Recommended Reading

* Blei, D. and J. Lafferty "Topic Models." In _Text Mining: Classification, clustering, and applications_, A. Srivastava and M. Sahami (eds.), pp 71-94, 2009. Chapter available [here](http://www.cs.columbia.edu/~blei/papers/BleiLafferty2009.pdf).
* Blei, David M., and John D. Lafferty. "Dynamic topic models." In _Proceedings of the 23rd international conference on machine learning_, pp. 113-120. ACM, 2006.
* Mimno, D. (April 2012). "Computational Historiography: Data Mining in a Century of Classics Journals." _Journal on Computing and Cultural Heritage_, 5 (1).
* Lesmeister Chapter 12.

***

#### 12. Data from the web

The promises and pitfalls of social media data. The Twitter API. The Facebook API. Web scraping. Ethics.

##### Resources

<!----  
* [Lecture Notes](lecturenotes/ME314_day12.pdf)
* [Lab 12 materials](https://lse-me314.github.io/assignment12/)
----->

<!---- * Lab 12 solution [as RMarkdown](https://lse-me314.github.io/solutions/ME314_assignment12_solution.Rmd) or [as HTML](https://lse-me314.github.io/solutions/ME314_assignment12_solution.html). ---->


##### Recommended Reading:

* Broniatowski, David A, Michael J Paul, and Mark Dredze. 2013. "National and Local Influenza Surveillance Through Twitter: an Analysis of the 2012-2013 Influenza Epidemic" _PLoS ONE_ 8(12): 83672–78. [PDF here](day11/Broniatowski.pdf)
* Barbera, Pablo., 2017. [``Less is more? How demographic sample weights can improve public opinion estimates based on Twitter data.''](http://pablobarbera.com/static/less-is-more.pdf) _Working Paper_
* Munger, Kevin., 2017. [``Tweetment Effects on the Tweeted: Experimentally Reducing Racist Harassment''](https://link.springer.com/article/10.1007%2Fs11109-016-9373-5) _Political Behaviour_ 39(3): 629-649
* Ginsberg et al., 2008. [``Detecting influenza epidemics using search engine query data''](https://www.nature.com/articles/nature07634) _Nature_ 457: 1012–1014.
* Lazer et al., 2014. [``The Parable of Google Flu: Traps in Big Data Analysis''](http://science.sciencemag.org/content/343/6176/1203.full) _Science_ 343: 1203-1205
* [Earthquake shakes Twitter users: real-time event detection by social sensors](http://www.ymatsuo.com/papers/www2010.pdf
 )
* http://rcrastinate.blogspot.co.uk/2015/02/mapping-world-with-tweets-including-gif.html
* https://github.com/pablobarbera/streamR
* Matthew Russell (2013). _Mining the Social Web_. O'Reilly Media. 2nd edition.

<!---
##### To use the `rtweet` package in R:
* [`rtweet` vignette](https://github.com/mkearney/rtweet)
* Twitter Authentication setup:
    + [Official](https://dev.twitter.com/oauth/overview/application-owner-access-tokens)
    + [Walkthrough](https://rtweet.info/articles/auth.html)  
* Twitter API documentation:
    + [Overview of REST API](https://dev.twitter.com/rest/public)
    + [Overview of streaming API](https://dev.twitter.com/streaming/overview)

--->

[](./data/covid_country_data.csv)
[](./data/ess.csv)
[](./data/const-econ-vars.csv)

***

