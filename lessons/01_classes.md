# Object Orientation: Classes, Instances, and Methods

## Overview
Rubyists always say "in Ruby, everything is an object." From a beginner's perspective, that's quite confusing. Objects know information, called attributes, and they can do actions, called methods. A more useful statement than "everything is an object" could be "everything has attributes and methods."

For an example of an object, think about you as a human being. You have attributes like height, weight, and eye color. You have methods like "walk", "run", "wash dishes", and "daydream." Different kinds of objects have different attributes and methods. In the next sections we’ll look at a few specific kinds of objects common in Ruby.

A class is an abstract idea. It defines what all objects of that type can know and do. Think of the chair you’re sitting in. It’s not an abstract chair, it is an actual chair. We’d call this actual chair an instance - it is a realization of the idea chair. It has measurable attributes like height, color, weight. The class chair, on the other hand, has an abstract weight, color, and size – we can’t determine them ahead of time.

We'll start with something that *could* be a physical object, like a Product. First let's define a couple things.

``` ruby
class Product
  def name
    "Fleece Wolf Blanket"
  end  
  def weight_in_ounces
    12
  end
end
```

Here is a list of the Objects involved in this class:

- Product (Class)
- Product.new (returns an instance of the product class)
- Product.new.name => "Fleece Wolf Blanket" (an instance of the class String)
- Product.new.weight_in_ounces => 12 (an instance of the class Integer)

The things that are not Objects are 

- `def`
- `end`
- The actual method name (i.e. `weight_in_ounces`)

### Return Value
When we say that "every method returns an object", we bring up a very important concept. 

Executing code is transactional, meaning that we give the computer code to execute, and the computer gives us a response. The response the computer gives is ALWAYS an object. Methods can be separated by `.`, which just tells the computer to execute the next word on the object that the last word returned. 

Let's imagine that the computer is a person and we're asking them to process this request for us.

``` ruby
product = Product.new
product.name
product.name.reverse.upcase
product.destroy
```
Let's walk through that line-by-line:

    Us:    Hey Computer.

    Compi: Yeah?

    Us:    We need your help.

    Compi: Awesome, I love to help.

    Us:    Great, pretty simple: let's start with `product = Product.new`

    Compi: Oh that's easy. `Product.new` tells me you want a new instance
           of a product like `#<Product:0x000001009ea6c8>`. I'll go ahead
           and remember that as the variable `product` in case you wanna
           use it later.

``` ruby
product = Product.new
# => <Product:0x000001009ea6c8>
```

    Us:    Thanks, I actually wanna use it now. How about `product.name`.

    Compi: Ok, so `product` returns that instance of `Product` - here
           you go: `#<Product:0x000001009ea6c8>`.

           Let's see, next you want `name`, ok, just to be clear, I am
           giving you the name of `#<Product:0x000001009ea6c8>`, not
           the `Product` itself.

           Checking, checking. Okay, got it. It's `"Fleece Wolf Blanket"`.
           So there you go: `"Fleece Wolf Blanket"`.

``` ruby
product.name
# => "Fleece Wolf Blanket"
```

    Us:    Perfect again! Next is gonna be a bit trickier, how about
           `product.name.reverse.upcase`?

    Compi: No problem. You gave me `product` so I'll give you
           `#<Product:0x000001009ea6c8>`.

           Next is `name`. I'll give you `"Fleece Wolf Blanket"`.

           Let's see, is there anything you wanted me to do with
           `"Fleece Wolf Blanket"`?

           Oh right, `reverse`. That's `"teknalB floW eceelF"`.

           And finally `upcase`! Since that's the last method, I'll
           go ahead and finally return `"TEKNALB FLOW ECEELF"` for
           you to do what you'd like with.

``` ruby
product.name.reverse.upcase
# => "TEKNALB FLOW ECEELF"
```

    Us:    Totally spot on. Nice work, Compi! Next I want to `product.destroy`.

    Compi: Alright, so `product` again returns `#<Product:0x000001009ea6c8>`.

           Next is `destroy`. Oh I didn't realize you we're gonna destroy
           that nice product I spent so little time creating. But ok.

           Just to let you know, I've executed your request, but there isn't
           much I can return, since it's gone and all. I'm just gonna give
           you `nil`. This is an Object, but you can't do much with it.
           I wouldn't recommend trying to call any more methods on it.

``` ruby
product.destroy
# => nil
```

In this example, for every word we type, the computer is returning an object. In the case of `product.name.reverse.upcase`, the computer is given four methods and is returning four objects. Even though we will only see the final result that `upcase` gives us, the computer is computing the first three methods all the same. So according the computer, this is what happened

- Receives `product`, returns `<Product @name>`
- Receives `<Product @name>`.name, returns `"Fleece Wolf Blanket"`
- Receives `"Fleece Wolf Blanket".reverse`, returns `"teknalB floW eceelF"`
- Receives `"teknalB floW eceelF"`.upcase, returns `"TEKNALB FLOW ECEELF"`

The computer handles things one word at a time.

## Frequently-Used Objects
In the last section, we said *everything is an object*. This is a confusing concept at first, but let's go over a couple of examples to highlight that point.

We're already familiar with strings and integers. Strings and integers are objects, too! Try `"hello".class` in IRB. What do you get? 

Just like our Product class, which defined the abstract idea of a product, there's a String class that defines the abstract idea of string. The same is true for `2.class` (Fixnum) and `2.3.class` (Float). 

Even classes have classes! Try `"hello.class.class"`!

Commonly-used classes have pre-defined methods baked in - that's how Ruby from the inside out. To see what methods are available on any object, just call `.methods`. Try it with `"hello".methods`. 

Just to go further down the rabbit hole, `"hello.methods"` is even an object, so you can call `.class` on it. Turns out that it is an Array (which is an object type we'll get to very soon). 

We can use Array's predefined methods on `"hello".methods`, like `.count`. `"hello".methods.count` will give us the number of methods you can call on any string. How many are there?

## Optional Lesson: More About Methods
Can't get enough methods? Check out Chapter 6 of Learn to Program. It'll go over some common (and not-so-common) methods for some of our favorite types of objects: integers and strings. 

## Homework  
* Work through Chapters 7, 8, 12, and 13 of Learn to Program on your own.
* Read Chapter 2 (stuff you know) and Chapter 3 (stuff you know, plus some new ideas) in Beginning Ruby. 