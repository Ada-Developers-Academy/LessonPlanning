# Object Orientation Continued: Attributes and Inheritance

## Attributes
We've avoided discussion of Ruby attributes until now, though you probably saw it come up a few times in your Beginning Ruby book. Let's take a closer look into what attributes are and how they can be used.

Beginning Ruby uses `attr_accessor` to define a Class's attributes. `attr_accessor` is a combination of two things: `attr_reader` and `attr_writer`. It is used as a shortcut for having to write your own methods. For example:

<pre><code>
  class Person
    def name
      @name 
    end
  end
</code></pre>  
  
Is the equivalent to setting `attr_reader :name`. But `attr_reader :name` doesn't do us much good now unless we have the ability to also write (create) the attribute for our Person instance.

<pre><code>
  class Person
    def name=(str)
      @name = str
    end
  end
</code></pre>  

Is the equivalent to setting `attr_writer :name`. But, similarly to `attr_reader`, in this instance `attr_writer :name` isn't helpful on its own.

## Lesson: Setting and Retrieving Attributes
To get lots of practice with the idea of getting and setting attributes, create your own getter and setter methods (like the ones above) for instances of a class called FavoriteDessert. Include handmade getters and setters for attributes like flavor, color, size, or whatever your heart desires!  

* Create your FavoriteDessert class in a file called `handmade_favorite_dessert.rb`, under your `classwork` directory. Push this up to GitHub.
* Then, create `boxed_favorite_dessert.rb` with the equivalent `attr_accessor` attributes and push to GitHub.
* You should verify that both your handmade and boxes desserts work by creating instances of your FavoriteDessert and setting and getting their attributes in IRB.

## Inheritance
The similarities of real life objects continues with inheritance. Inheritance can almost be thought of as evolution. Let's take the last animal example and add inheritance by adding the `Animal` class

    class Animal
      def move
        puts "moving"
      end
      
      def reproduce
        self.clone
      end
      
      def digest
        puts "digesting..."
      end
      
      def color
        "translucent"
      end 
    end
    
Now we have an animal class, which is a little more broad of an idea than snakes and dogs, but we know that both snakes and dogs are animals. We can create the same relationship in Ruby. 

    class Dog < Animal
      def speak
        "Bark bark!"
      end
    
      def move
        puts "trotting"
      end
    
      def color
        "White"
      end
      
      def wag_tail
        #wags tail
      end
    end
    
    class Snake < Animal
      def speak
        "hiiiiissssss"
      end
    
      def move
        puts "slithering"
      end
    
      def color
        "green"
      end
    end
    
We can see we add inheritance by `< ClassToInheriteFrom` after the class definition. This gives us the functionality you might expect. Now our `Dog` class inherits from `Animal`. Which gives the `Dog` all the methods of `Animal` like `reproduce`. Since all animals can do that, it makes sense to define that method on `Animal` 

    Animal.new.move => "moving"
    Dog.new.move    => "trotting"
    Dog.new.digest  => "digesting"
    
- Class
-- Animal
--- Dog

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
