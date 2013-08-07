### SOLID
TODO: Add Solid


## RubyGems
RubyGems are like little (or sometimes BIG) bundles of Ruby. They can add any and all code to your ruby toolkit. Ruby provides many classes such as Strings, Arrays, Integers, and Hashes, but imagine that you often find yourself using Addresses in Ruby, you could write a gem that encompasses the attributes of an address, bundle it in a gem and reuse it in different application, and distribute it to any one in the world via rubygems.org.

## HTTP
HTTP (Hypertext transfer protocol) is an application protocol for distributed, collaborative, hypermedia information systems. Or in understandable terms HTTP is how data is passed around the internet. Whenever a page, image, stylesheet, etc... loads on the internet, it's HTTP used to request the resource. HTTP is very robust and includes many advanced data communications, we're going to focus on the very basics right now. There are generally two parts to HTTP the client's request, and the servers response. Each type holds data in the "headers", data not seen by the user, and the "body" typically what the user provides, or consumes for requests and responses respectively.

### Resources
When we talk about resources, the easiest thing to imagine is a file (HTML, images, stylesheets, etc...), but a resource can also be a chunk of dynamically generated content. For instance when viewing Twitter, their servers are generating the data relevant to you, they are not saving an html file and returning the file.

### Client Request
In the most basic form a clients request will consist of a "method" and path to a resource. The most basic methods include:

- GET (gets a resource)
- POST (posts data to the server)
- HEAD (similar to get, but does not request the 'body' of the response)

Addition methods have been added and are commonly used in Rails:

- PUT (updates a resource)
- DELETE (deletes a resource)

The path of a resource is similar to the paths of the files on a computer. So if you were to type `http://www.example.com/images/logo.png` in the url bar the data sent the the server (via HTTP) might look like:

    GET /images/logo.png HTTP/1.1
    Host: www.example.com

The `HTTP/1.1` specifies which version of HTTP the request is using.

### Server Response
A server response for a basic HTML page might look like:

    HTTP/1.1 200 OK
    Date: Mon, 23 May 2005 22:38:34 GMT
    Server: Apache/1.3.3.7 (Unix) (Red-Hat/Linux)
    Last-Modified: Wed, 08 Jan 2003 23:11:55 GMT
    Etag: "3f80f-1b6-3e1cb03b"
    Content-Type: text/html; charset=UTF-8
    Content-Length: 131
    Connection: close

    <html>
    <head>
      <title>An Example Page</title>
    </head>
    <body>
      Hello World, this is a very simple HTML document.
    </body>
    </html>
    
The data above the `<html>` are the response headers. As you can see there are several things that might be useful when dealing with requests.

- Date
- Last Modified (the last time the requested content was changed)
- Etag (a unique modifier to determine if the content is in the exact same state as a previous request)
- Content-Type
- Content-Length

HTTP requests return a status code in the headers. These codes are standardized for HTTP, so each code has a specific meaning that is the same across any web application. A plain successful response will have the code of `200`, while a page not found is a `404` and an application error is a `500`. For a full list of HTTP codes see [HTTP Status Codes](http://en.wikipedia.org/wiki/List_of_HTTP_status_codes/)
The HTML is the "body" of the response. This is what would be rendered in the browser.

TODO: HTTP lesson (curl)

## JSON

Most of us have heard of HTML. It is typically what a user of the internet is seeing, but data is often passed between servers and in the background of webpages using different datatypes. A very common type is JSON (JavaScript Object Notation). JSON is designed to be a very simple, text-based, human readable, data structure. As you can guess from the name it is derived from the JavaScript language. JSON is arranged into very simple key/value pairs.

    {
      firstname: "Ada",
      lastname: "Lovelace",
      age: 147,
      address: {
        street: "123 Fake St."
        city: "Springfield",
        state: "OR",
        zip: 98112
      }
    }
    
As you can see this "Object" is describing a person and their address.

TODO: JSON Lesson


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
The Front end, server, and database can be setup in MANY configurations. Web frameworks, just give us a well thought-out configuration. Sinatra is one of the most simple. In its most basic form it only provides a front end and server. The database is optional. Let's start with the most basic form. The idea is that we want to send a url to the server and get back a response, both through the browser.

- Gemfile
- app.rb file
- require
- server
- routes
- The Browser


## Resources
- [Let's Build a Sinatra App](http://matt.weppler.me/2013/07/19/lets-build-a-sinatra-app.html?utm_source=rubyweekly&utm_medium=email)
- [http://sqlzoo.net/wiki/SELECT_basics](http://sqlzoo.net/wiki/SELECT_basics)