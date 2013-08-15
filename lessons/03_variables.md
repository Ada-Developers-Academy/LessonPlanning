# Variables

## Local Variables
We've only dealt with local variables thus far, which is completely fine for the types of scripts and applications that we've done. But what is a local variable, and why is it different than other types? 

Local variables can only be used in the same place they were defined. If you try to use that variable outside of its _scope_, the computer won't know what it is!

Take the following example:
<pre><code>
def say_hello
  puts "Hello, #{name}!"
end

name = Elise
say_hello
</code></pre>

Will this work? Why or why not? 

## Global Variables
Global variables are dangerous in applications, but it's useful to know what they are. They're essentially the opposite of local variables - they'll work in any scope. Global variables begin with `$`.

<pre><code>
def say_hello
  puts "Hello, #{$name}!"
end

$name = Elise
say_hello
</code></pre>

## Instance (Object) Variables
Like global variables, instance variables are denoted with a special character: `@`. Unlike global variables, though, they're accessible only within an object's scope. 

Let's create a new object to demonstrate where instance variables can work. 

<pre><code>
class Sherbet
  def initialize(flavor)
    @flavor = flavor  
  end
end
</code></pre>
Here, the instance variable `@flavor` is being assigned from the local variable `flavor`.

We can use `@flavor` for any instance of a Sherbet object. 

<pre><code>
class Sherbet
  def initialize(flavor, person)
    @flavor = flavor  
    @person = person
  end
  
  def say_favorite
    puts "#{@person} likes #{@flavor}."
  end
end

my_sherbet = Sherbet.new("Elise", "lemon")
my_sherbet.say_favorite
</code></pre>

Given our new understanding of instance variables, how could we re-write the example code from the first example to make it work? 

## Class Variables
Class variables aren't particularly common, but are denoted by `@@`. They pertain to all objects of a given class. 

## Reading
Chapter 6, Beginning Ruby
