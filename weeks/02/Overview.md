# Week Two
## More Ruby

### Object Orientation
There is a lot of talk of object orientation. What is object orientation? It's actually quite descriptive and simple, we organize our code (Classes and Methods) to mimic "Objects", this can be very literal like in the case of a Product, or abstract as in the case of a User. It's very common for rubyists to state that "everything in ruby is an object", but from a beginners perspective that can be quite confusing. I think a more useful statement could be "every class is an object, and every method returns an object". Let's take a look at a couple examples and explain why.

We'll start with something that *could* be a physical object, like a Product, this is a common class that any ecommerce application may have. First lets define a couple things.

    class Product
      
      def name
        "Fleece Wolf Blanket"
      end
      
      def weight_in_ounces
        12
      end
      
    end
    

Here is a list of the Objects involved in this class:

- Product (Class)
- Product.new (returns an instance of the product class)
- Product.new.name => "Fleece Wolf Blanket" (String, ALL ruby classes are objects)
- Product.new.weight_in_ounces => 12 (Integer)

The things that are not Objects are 

- `def`
- `end`
- The actual method name (i.e. `weight_in_ounces`)

### Return Value
When we say that "every method return an object", we bring up a very important concept. Executing code is transactional, meaning that we give the computer code to execute, and the computer gives us a response. The response the computer gives is ALWAYS an object. This is happening for almost every word we type. Methods are seperated by `.`, which just tells the computer to execute the next word on the object that the last word returned. Lets imagine that the computer we're a person and we're asking them to process this request for us.

    product = Product.new
    product.name
    product.weight_in_ounces
    product.name.reverse.upcase
    product.destroy
    
Us: Hey Computer.  

Compi: Yeah?

Us: We need your help.

Compi: Awesome, I love to help.

Us: Great, pretty simple lets start with `product = Product.new`

Compi: Oh that's easy. `Product.new` tells me you want a new instance of a product like `#<Product:0x000001009ea6c8>`. I'll go ahead and remember that as `product` in case you wanna use it later.
  
Us: Thanks, I actually wanna use it now. How about `product.name`.

Compi: Ok, so `product` returns that instance of `Product`, here you go `<Product @name>`. Let's see, next you want `name`, ok, just to be clear, I am giving you the name of `<Product @name>`, not `Product`. It's `"Fleece Wolf Blanket"`. So there you go `"Fleece Wolf Blanket"`.
  
Us: Great! Next is `product.weight_in_ounces`!

Compi: Ok, so `product`, here you go: `<Product @name>`!, next is `weight_in_ounces`, no problem, the `weight_in_ounces` of `<Product @name>` is `12`. Here is the final value you wanted, `12`.
  
Us: Perfect again! Next is gonna be a bit trickier, how about `product.name.reverse.upcase`?

Compi: No problem. You gave me `product` so I'll give you `<Product @name>`, next is `name`, I'll give you `"Fleece Wolf Blanket"`. Let's see is there anything you wanted me to do with `"Fleece Wolf Blanket"`? Oh right `reverse`, thats `"teknalB floW eceelF"`. And finally `upcase`! Since that's the last method, I'll go ahead and finally return `"TEKNALB FLOW ECEELF"` for you to do what you'd like with.

Us: Totally spot on. Nice work compi! Next I want to `product.destroy`.

Compi: Alright, so `product` again returns `<Product @name>`. Next is `destroy`, oh I didn't realize you we're gonna destroy that nice product I spent so little time creating. But ok. Just to let you know, I've executed your request, but there isn't much I can return, since it's gone and all. So I'm just gonna give you `nil`, this is an object but you can't do much with it. So I would recommend trying to call any more methods on it.
  
So let's keep going with this for a minute. Just to drill it in. For every word we type the computer is returning an object. In the case of `product.name.reverse.upcase`, the computer is given four words and is returning four objects. Even though we will only see the final result that `upcase` gives us, the computer is computing the first three methods all the same. So according the computer, this is what happened

- Receives `product`, returns `<Product @name>`
- Receives `<Product @name>`.name, returns `"Fleece Wolf Blanket"`
- Receives `"Fleece Wolf Blanket".reverse`, returns `"teknalB floW eceelF"`
- Receives `"teknalB floW eceelF"`.upcase, returns `"TEKNALB FLOW ECEELF"`

The computer handles things one word at a time.

### Classic
In a more classic example of describing objects we're going with actual phsyical objects, `Snake` and `Dog`.

    class Snake
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
    
    class Dog
      def speak
        "Bark bark!"
      end
      
      def move
        puts "trotting"
      end
      
      def color
        "White"
      end
    end

These two classes are pretty descriptive. If we create instances of these classes we can call the methods we've defined on them. Like so

    fido = Dog.new
    fido.speak => "Bark bark!"
    fido.color => "White"
    
So in the very real aspect we can see how these classes mimic objects we assign `fido` to an instance of a `Dog`, we can then call methods on `fido`, methods can be imagined as verbs (`speak`) or attributes (`color`). 

### Inheritance
The similarities of real life object furthers with inheritance. Inheritance can almost be thought of as evolution. Let's take the last animal example and add inheritance by adding the `Animal` class

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
