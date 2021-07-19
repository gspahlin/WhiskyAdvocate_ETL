# WhiskyAdvocate_ETL
Scraping Data on Whiskey from Whiskey Advocate 
<br><br>
The goal of this project was to use WhiskyAdvocate.com to compile data on whiskey (I habitually prefer the Irish spelling, which contains the letter 'e') from 
whiskyadvocate.com. My eventual goal is to use machine learning to provide whisky recommendations via an app using this data. The proximate goal of this project is 
to scrape the data from whiskyadvocate, clean the data, use natural language processing to vectorize review language for ML consumption, and load all the data into a 
relational database using Python and PostgreSQL. While I was occupying myself with this, I also did some basic analysis and exploration, including at the end using SQL
queries to test the database and provide some answers to basic questions. The tables for my dataset are available in this repository in .csv format. 
<br><br>
<img src= 'https://github.com/gspahlin/WhiskyAdvocate_ETL/blob/master/ERD_and_SQL/Whiskey_ERD.jpg'>
 <br><br>    
 Files and Folders:
 <br><br>
 whiskey_scrape_and_clean.ipynb - This file contains a script to scrape data from whiskyadvocate.com using the BeautifulSoup library of Python. This is also where I 
 did the majority of basic cleaning operations for the data. 
 <br><br>
 <img src= 'https://github.com/gspahlin/WhiskyAdvocate_ETL/blob/master/screenshots/scraping_function.jpg'>
 <br><br>
 whiskey_explore_clean_load.ipynb - This notebook reads in my semi-finished dataset from the first notebook in .csv form. I then do some basic descriptive stats and 
 visualization. After this I use the NLTK library to identify 32 of the most common desciptive words in the reviews I scraped, and encode a table with instances of those
 words for ML use. This can also be helpful for querying based on flavor keywords. I then set up tables as they appear in my ERD. Finally I use Psycopg2 and SQLAlchemy 
 to insert my dataframes into PostgreSQL.
 <br><br>
 <img src= 'https://github.com/gspahlin/WhiskyAdvocate_ETL/blob/master/screenshots/whiskey_hexbin.jpg'>
 <br><br>
 whiskey_queries_and_analysis.ipynb - I use psycopg2 to connect to my database, and then run various SQL Queries on the database for testing and exploration purposes.
 Some of the queries results are visualized after the fact. 
 <br><br>
 <img src= 'https://github.com/gspahlin/WhiskyAdvocate_ETL/blob/master/screenshots/SQL_example.jpg'>
 <br><br>
 clean_whiskey_data2.csv - This is the dataset produced by the initial scrape-and-clean notebook
 <br><br>
 finished_db_tables/  - This is the directory where you will find the tables for my dataset in .csv form. In principal it should be possible to directly upload these
 to an SQL database software of your choice, and reconstruct my database, but I found it easier to load them using Python to connect to the database. 
 <br><br>
 screenshots/ - contains snapshots of my notebooks for this readme
 <br><br>
 Gregory W. Spahlinger   
 gspahlin@gmail.com    
 <a href = 'https://www.linkedin.com/in/gregory-spahlinger/'>LinkedIn</a>
