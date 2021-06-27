# whiskey_data_scraper
Scraping Data on Whiskey from Whiskey Advocate 

Project outline:
This is my set of objectives for this project. Currently in the beginning stages of getting it together.

Goals:
<strike>1) write a script to gather data from Whiskey Advocate - the script should be able to compile data from the whole site and compile into a dataset</strike>

Goal 1 complete. 

a)New directions: do some basic exploration and analysis with the data, and engineer a few features

b)Use basic NLP to look at reviews and try to find important keywords for ML recommendation models. 

c)Develop an ML function (probably with a clustering method) that can identify several good whiskies similar to a selected whiskey to generate recommendations. KNN is
probably a good choice for this task.


2) compile the data using an SQL database in postgreSQL. Ideally this can be done as a pipeline that automates insertion into the database, possibly using the
SQLalchemy library of Python. 

      - produce an erd and design a well constructed relational database for the information

3) Possibly write a flask API (and host on Heroku) that retrieves whiskies with certain characteristics, within a certain price range
