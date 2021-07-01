# whiskey_data_scraper
Scraping Data on Whiskey from Whiskey Advocate 

Project outline:
This is my set of objectives for this project. Currently in the beginning stages of getting it together.

Goals:<br>
<strike>1) write a script to gather data from Whiskey Advocate - the script should be able to compile data from the whole site and compile into a dataset</strike>

Goal 1 complete. 

a)<strike>New directions: do some basic exploration and analysis with the data</strike>

Goal 2 complete (unless I think of other stuff to do here later)

b) Use basic NLP to look at reviews and try to find important keywords for ML recommendation models. 
   <br>   - Process the reviews by removing stop words, and using lemmitization to address conjugation
   <br>   - vecorize using something like a bag of words model so that the reviews can be parsed by an ML model
      
c) compile the data using an SQL database in postgreSQL. Ideally this can be done as a pipeline that automates insertion into the database, possibly using the
SQLalchemy library of Python.
    <br>  - produce an erd and design a well constructed relational database for the information
    <br>  - use SQL queries to answer some questions about specific whiskies and put screenshots into a folder:
    <br> Questions: What are the top 5 whiskies for each reviewer?, What types of whiskey does each reviewer review most often? What are the top 5 whiskies in several
      price ranges? What are the the top whiskies in some common whiskey categories. 

2) Develop an ML function (probably with a clustering method) that can identify several good whiskies similar to a selected whiskey to generate recommendations. 
      <br> - I'm currently looking at this as a regression problem. I will ask users to give scores to different whiskies. This will be used as training data for
      a regression model that predicts score in the rest of the data. The regression model can then predict scores in the full dataset, and sort the whiskeys
      by predicted scores. The top predicted scores can then be returned as recommendations. NLP vectors and prices can be used as features (maybe also abv
      values).

3) Possibly write a flask API (and host on Heroku) that retrieves whiskies with certain characteristics, within a certain price range. May also need javascript for
   web implementation.
