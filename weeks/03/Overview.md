# Week Three 
## Data Fundamentals
When we refer to "data" in web development we are typically not referring to bytes of data specifically, but rather human readable data such as this paragraph. We will be focusing on Ruby and web related syntaxes for data types, but these concepts go deep into computer science and are often only slightly different for different languages, although Ruby makes changing interpreting and changing data types freely a breeze comparatively.

- String : A short amount of text, typically less than 255 chars, useful for single words and reference
- - Text : A variable amount of text, useful for page contents, descriptions, or any other free form text (like this tutorial)
- Numeral
- - Fixnum : A whole number including 0 and negatives
- - Bignum : Fix number over 9^18
- - Float  : A fractional number
- - Decimal : A fractional number
- Enumerables
- - Array : A collection of other data type objects. [1,2,3, "Hello World"]
- - Hash : A collection of other data type objects with "pointers". A pointer is an identifier that references a data type object. The pointer is commonly an integer ({0 => "Ada"}), but can be a string to be more descriptive ({"first_name" => "Ada"})
- Boolean : true or false
- Nil : This is the absence of a value, not to be confused with 0, false, or "".

### Array
An Array is a collection of objects. This data type is useful to store a group of objects to iterate through.

`[1,2,3, "Hello World"]`

- [], symbolizes the collection
- Objects are seperated by ","'s.
- Each value can be any object.

### Hash
  A Hash can also be called an associative array, map, symbol table, or dictionary depending on the context. Hashes are a collection of key, value pairs. Each possible key can only be used once in a single collection. Hashes can be modified by adding/removing keys and values or changing the value of an existing key.
  
`{first_name: "Ada", last_name: "Lovelace"}`

- {}, symbolizes the collection, everything inside of the curly braces is part of the collection
- first_name, is the pointer or key
- "Ada", is the value of the first_name key. The value of a Ruby hash can be any ruby object, including the ruby representations of the data types we've outlined so far.
- "," seperate each key value pair

### JSON
JSON (**J**ava**s**cript **O**bject **N**otation) is an open standard designed for human readable data interchange. A JSON object is very similar to a Ruby hash in many ways. JSON is a format that is commonly used to exchange data across networks. 

## SQL
SQL (**S**tructured **Q**uery **L**anguage) is usually what people are talking about when they say "database", there are technically a few common database standards (MySQL, Postgresql, sqlite), but the skin-deep differences are negligible. The data structure can be imagined similarly to an excel file. The layout of a database is:

- Database : Typically an application has one database, a database can have many settings but the most important we need to worry about is only the name.
- Table : Databases have many Tables. A Table is the subject of a group of data.
- Column : Tables can have many columns. Columns have a name and a datatype associated with them. This can be though of as a header row in a simple excel file. Remember, each column has a datatype associated with it. So a column named "age" would most likely have a data type of "Integer".
- Row (or record): Tables can have many rows. A Row contains a collection of cells, one for each column assigned to the parent table. 
- Cell : A cell contains the value for the associated column, again the value must be formatted appropriately for the chosen datatype of the column.

SQL provides us with many useful datatypes (including more advanced data types such as Date and Time), operations to add, modify, or delete any records, and a very powerful querying syntax for searching the data. Here is a very basic example of a database that has a "users" table with common user information in the columns

`SELECT first_name,last_name,age FROM users WHERE age > 18`

This query would give us the names and age of each user over the age of 18. Let's break down the syntax a bit. The words in caps are SQL expression, while the lower case are the defined variables. `first_name, last_name, age` are all columns for the `users` table. `SELECT` is used to define which columns we'd like to return, a `*` can be used to return ALL of the columns for the specified table. `FROM <table name>` is used to specify the table we'd like to search. `WHERE` compares the tables values being searched and eliminates any rows that do not match the given operation. We used `>`, a list of SQL operators:
  
-  `=`	Equal
-  `<>` or `!=`	Not equal
-  `>`	Greater than
-  `<`	Less than
-  `>=`	Greater than or equal
-  `<=`	Less than or equal
-  `BETWEEN`	Between an inclusive range
-  `LIKE`	Search for a pattern
-  `IN`	To specify multiple possible values for a column 

TODO: Write SQL Lesson

## ActiveRecord
ActiveRecord is a standard to provide a ruby class the methods and configuration to connect to a SQL table, and provide many common needs when dealing with complex data sets. Instead of writing SQL ActiveRecord provides a syntax to write SQL queries as ruby methods that tend to be much more human readable.

TODO: ActiveRecord Lesson

## Ruby on the Web
Ruby is used for a huge range of applications. But we will primarily be focusing on Ruby for web applications. Generally web applications are built with several components:

- Front End: This is built of HTML, CSS, and Javascript. This is what the user sees in the browser.
- Server: The server serves the HTML pages to the browser.
- Database: This is the 'memory', where the data of the application is stored.

Ruby's is used for the server logic. In a very simple example, on Twitter. The front end shows the tweets, which the server (Ruby) uses logic to determine, which user, tweets, connections, suggestions, and ads to show. The server queries the database for the data that it needs. 

TODO: Simple CSV, Ruby, Terminal lesson

## Sinatra
The Front end, server, and database can be setup in MANY configurations. Web frameworks, just give us a well thought-out configuration. Sinatra is one of the most simple. In it's most basic form it only provides a front end and server. The database is optional. Let's start with the most basic form. The idea is that we want to send a url to the server and get back a response, both through the browser.

- Gemfile
- app.rb file
- require
- server
- routes
- The Browser


## Resources

- [http://sqlzoo.net/wiki/SELECT_basics](http://sqlzoo.net/wiki/SELECT_basics)