# Week One
## Bash
A Shell is a command-line tool for operating a computer. Most of us are used to GUI based operating systems, but a command-line approach can be much more effective for many tasks in programming. Bash is a UNIX Shell (**B**ourne **A**gain **Sh**ell), it's the default shell for Linux and OS X, and has been ported to Windows with [cygwin](http://www.cygwin.com). Many of the functions and tools needed for Ruby development will be executed from bash.

TODO: Bash Lesson

## Git
We will use Git, which is a distributed version control system, to track files and changes to code. Version control is a system that records changes to a set of files, to form a history of all of the changes. Each set of tracked files is called a repository or repo. Git allows us to distribute repos to remote servers for collaboration on projects. Git uses "branches" to keep multiple versions of code in parallel. 

TODO: Git Lesson

### Github
Github.com is a web service to host and manage git repositories. After a git repository is created locally a remote repo can be created on github. Or, if collaborating on somebody else's project a repo can be cloned directly from github. 

## Beginning Ruby
### History
TODO: HISTORY

### Installation
TODO: INSTALLATION

### Trying Ruby
Ruby can be directly executed in a bash window using IRB (**I**nteractive **R**u**b**y). This can be a helpful tool for learning, quick computations, documentation, and debugging problems. 

TODO: IRB LESSON

- Arithmetic
- Basic string manipulation
- True, False, and Nil
- Arrays

Ruby can also be executed by using a script (file) by using the `ruby` command line tool. In a bash window you can type `ruby -h` to see the usage and a list of options for the `ruby` tool. The most basic usage would be `ruby [filename]`, doing so will execute the contents of the file.

TODO: SCRIPT LESSON

- `puts`
- `if`, `else`, `end`
- blocks: `while` & `each`


```
  
    (2..26).to_a.each do |n|
      File.open("#{n}.md", 'w') do |file|
        file << "DO: Write Week #{n}"
      end
    end
  
```

- user input
- Hashes

### Structure
Understanding the core concepts of programming languages can be the most challenging part. We will spend a good deal of time learning the fundamental ideas and structure that surround the most basic ruby usage. Programming languages can be quite difficult to grasp, not because they over overly complex, but because they are abstract ideas. If we can understand how ruby works we can certainly be more effective in writing ruby code. We will be focusing on:

TODO: Stucture Lesson

- Object Orientation: What is an object?
- Classes
- Instances
- Class Methods
- Instance Methods
- Inheritance
- State

### Mastery Quiz

Identify the returned value and class of the returned value for EACH "word" in the following code:

`([1,2,3].reverse.join(" and ")) + "... GO!"`

- [1,2,3] : Array 
- [3,2,1] : Array
- "3 and 2 and 1" : String
- "3 and 2 and 1... GO!" : String

```

    class Person
      def initialize(name, age)
        @name = name
        @age  = age
      end
      
      def name
        @name
      end
  
      def age
        @age
      end
    end
    
    ada = Person.new("Ada Lovelace", 132)
    year_born = Date.today.year - ada.age
    "Ada was born in the year " + year_born
```

## Pairing

Pair programming is a common practice in agile software development. Pair programming is simply 2 people, sitting side-by-side working on the same piece of code on a single computer. Some common reasons for pair programming are:

- Productivity is limited by our minds not our hands
- One person can be editing code while the others mind is looking into future problems and strategic direction
- A more diverse thought process for every problem
- Less "good enough" code
- Both programmers will learn from each others practices

Studies have shown that while pair programming slows down production time (compared to two independent programmers), code quality is increased a non-trivial amount. While pair programming traditionally happens side-by-side, remote pair programming can be accomplished with the use of screen sharing.

Pair programming is a social practice and can present a few hurdles with coordination and cooperation. A couple things to keep in mind:

1. Pair programmers are equals, even if one developer has more experience both developers should be given equal opportunity for input and practice (pair programming and mentor/student programming are much different)
2. If a difference of opinion arises try agreeing on a point of return with one approach, to start the second approach.
3. Everyone's styles and practices are different, if you believe yours is "correct", clearly explain why you think so.
4. Be awesome to your fellow coders

Many employers will require pair programming, even as much as 100% of the time, but typically it is optional. Students will be practicing pair programming for many of the projects during ADA with fellow students, instructors, mentors, and potential employers. 

### Questions

1. Did you find pair programming more productive?

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