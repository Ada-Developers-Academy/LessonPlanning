# Week Three 

## Ruby on the Web
Ruby is used for a huge range of applications. But we will primarily be focusing on Ruby for web applications. Generally web applications are built with several components:

- Front End: This is built of HTML, CSS, and Javascript. This is what the user sees in the browser.
- Server: The server serves the HTML pages to the browser.
- Database: This is the 'memory', where the data of the application is stored.

Ruby's is used for the server logic. In a very simple example, on Twitter. The front end shows the tweets, which the server (Ruby) uses logic to determine, which user, tweets, connections, suggestions, and ads to show. The server queries the database for the data that it needs. 

TODO: Simple CSV, Ruby, Terminal lesson

## Sinatra
The Front end, server, and database can be setup in MANY configurations. Web frameworks, just give us a well thought-out configuration. Sinatra is one of the most simple. In it's most basic form it only provides a front end and server. The database is optional. Let's start with the most basic form. The idea is that we want to send a url to the server and get back a response, both through the browser.

TODO: Simple Sinatra Lesson

Before we hook a database to our application, let's study what different data types provide.

## Data Fundamentals
TODO: Write Data Fundamentals
## SQL
TODO: Write SQL

TODO: Write SQL Lesson

## ActiveRecord
ActiveRecord is a standard to provide a ruby class the methods and configuration to connect to a SQL table, and provide many common needs when dealing with complex data sets. Instead of writing SQL ActiveRecord provides a syntax to write SQL queries as ruby methods that tend to be much more human readable.

TODO: ActiveRecord Lesson
