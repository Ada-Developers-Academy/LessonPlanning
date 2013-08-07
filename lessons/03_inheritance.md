# Inheritance, In Depth

## Overview
We've already looked at inheritance a bit: remember that a Fleece Wolf Blanket is a Product, and a Snake is a type of Animal. We can get as detailed as we want to in the inheritance chain: consider an Ant, which is an Insect, which is an Animal, which is a LivingThing. 

## Why Inheritance Matters
Imagine we're ice cream makers, and we need to compile ingredients lists for each of our ice creams. 

<pre><code>
class IceCream
  def base
    "whole milk"
  end
end
</code></pre>

But then, we roll out a frozen yogurt, and the base is only half whole milk, half nonfat yogurt. We can utilize inheritance to highlight this functionality.

<pre><code>
class FrozenYogurt < IceCream
  def base
    "yogurt and " + super 
  end
end
</code></pre>

## Overriding  
You can use this on Ruby's standard Classes, too. By creating a String class, you'll be able to override String's standard methods.

<pre><code>
"hello".length
class String
  def length
    42
  end
end
"hello".length
</code></pre>

## Organizing your Code with Modules
We've learned that each class inherits methods from its parent classes in a linear way. Sometimes, this can have unintended consequences. Let's say we had a method `say_hello`, but we had two distinct audiences.

<pre><code>
def say_hello
  puts "Hello!"
end

def say_hello
  puts "Bonjour!"
end
</code></pre>

This brings up the idea of internationalization, which we'll handle later. However, how can we make sure the right `say_hello` method is called? Right now, if we were to run this code in `irb`, what `say_hello` would get called?

We could handle this by putting the methods in different classes, but we don't have a concept of an `EnglishSpeakingPerson` and a `FrenchSpeakingPerson`, so it doesn't make much sense to go that route. Let's use Modules instead.

Modules create *namespaces* for which you can define distinct pieces of code. You can even wrap Classes in Modules.

<pre><code>
module French
  def say_hello
    puts "Bonjour!"
  end
end 

module English
  def say_hello
    puts "Hello!"
  end
end

English.say_hello # will be distinct from
French.say_hello
</code></pre>

Modules are simpler than Classes. You can't create new instances of Modules (`English.new` won't work) and they can't inherit from anything (`module French < module Language` won't work). Beginning Ruby has a great example of classes within Modules that you should check out (ex: `Toolbox::Ruler.new` vs. `Country::Ruler.new`).

## Adding to Code with MixIns
We know that Ruby only supports single inheritance - your Person class can only inherit from Animal, which inherits from LivingThing, in a hierarchy. However, there might be some cross-class code that you want applied that doesn't fit within the chain of hierarchy. This is where Mix-ins come in. 

<pre><code>
module MyMixIns
  def formatted_today
    DateTime.now.strftime("%m/%d")
  end
end

class User
  include MyMixIns
end

User.new.formatted_time
</code></pre>

## Enumerable and Comparable
One of the most powerful and simple modules (that's already included in Arrays and Hashes) is Enumerable. Check out the docs online to learn more about Enumberable and Comparable's methods (`collect`, `select`, `map`, `sort`, `between?`)