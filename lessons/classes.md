# Classes, Instances, and Methods

## Overview
In Ruby, everything is an object. Objects know information, called attributes, and they can do actions, called methods.

For an example of an object, think about you as a human being. You have attributes like height, weight, and eye color. You have methods like "walk", "run", "wash dishes", and "daydream." Different kinds of objects have different attributes and methods. In the next sections we’ll look at a few specific kinds of objects common in Ruby.

A class is an abstract idea, it defines what all objects of that type can know and do. Think of the chair you’re sitting in. It’s not an abstract chair, it is an actual chair. We’d call this actual chair an instance - it is a realization of the idea chair. It has measurable attributes like height, color, weight. The class chair, on the other hand, has an abstract weight, color, and size – we can’t determine them ahead of time.

## Lesson: Personal Chef
To get a better understanding of objects and their attributes and methods, we'll walk through section 4 of [JumpStart Lab's Ruby in 100 Minutes](http://tutorials.jumpstartlab.com/projects/ruby_in_100_minutes.html#4.-objects,-attributes,-and-methods). 

* This lesson combines a script file and IRB. You can load files in IRB by using the `load` command. You can then dynamically interact with the code you defined in the file. 

* Make sure that `personal_chef.rb` is in a `classroom_projects` folder (which should be a git repo). Push your files to GitHub at the end of the lesson.

From this exercise, you should now understand:  

* Classes and instances
* Methods
* Method parameters
* Return values

## Frequently-Used Objects
In the last section, we said *everything is an object*. This is a confusing concept at first, but let's go over a couple of examples to highlight that point.

We're already familiar with strings and integers. Strings and integers are objects, too! Try `"hello".class` in IRB. What do you get? 

Just like our PersonalChef class, which defined the abstract idea of a personal chef, there's a String class that defines the abstract idea of string. The same is true for `2.class` (Fixnum) and `2.3.class` (Float). 

Even classes have classes! Try `"hello.class.class"`!

Commonly-used classes have pre-defined methods baked in - that's how Ruby from the inside out. To see what methods are available on any object, just call `.methods`. Try it with `"hello".methods`. 

Just to go further down the rabbit hole, `"hello.methods"` is even an object, so you can call `.class` on it. Turns out that it is an Array (which is an object type we'll get to very soon). 

We can use Array's predefined methods on `"hello".methods`, like `.count`. `"hello".methods.count` will give us the number of methods you can call on any string. How many are there?

## Advanced Strings: Methods, Concatenation, and Interpolation
Let's walk through JumpStart Lab's [Ruby in 100 Minutes' section on Strings](http://tutorials.jumpstartlab.com/projects/ruby_in_100_minutes.html#5.-strings). Stop when you get to Section 6: Symbols.

Through this lesson, we'll be introduced to:  

* Common methods: `.length`, `.delete()`, `.gsub(x,y)`, `.split()`
* Extracting substrings with [x..y]
* Working with Strings and Variables
* Concatenation versus Interpolation

## Optional Lesson: More About Methods
Can't get enough methods? Check out Chapter 6 of Learn to Program. It'll go over some common (and not-so-common) methods for some of our favorite types of objects: integers and strings. 

## Homework  
* Work through Chapter 7 of Learn to Program (called Flow Control) on your own.
* Read Chapter 2 (stuff you know) and Chapter 3 (stuff you know, plus some new ideas) in Beginning Ruby 

### Attributions
Overview, Personal Chef, and Advanced Strings are from JumpStart Lab's [Ruby in 100 Minutes](http://tutorials.jumpstartlab.com/projects/ruby_in_100_minutes.html).