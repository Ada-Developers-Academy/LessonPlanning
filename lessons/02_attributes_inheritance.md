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

## Classic Object Orientation Example: Animals
In a more classic example of describing objects, we'll physical objects, `Snake` and `Dog`.

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

## Inheritance
The similarities of real life objects continues with inheritance. Let's take the last animal example and add inheritance by adding the `Animal` class.

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
    
We can see we add inheritance by `< ClassToInheriteFrom` after the class definition. This gives us the functionality you might expect. Now our `Dog` class inherits from `Animal`. Which gives the `Dog` all the methods of `Animal` like `reproduce`. Since all animals can do that, it makes sense to define that method on `Animal`, not on `Snake` or `Dog`. 

    Animal.new.move => "moving"
    Dog.new.move    => "trotting"
    Dog.new.digest  => "digesting"  
    
- Class  
-- Animal  
--- Dog

## Lesson: Inheritance
Create a file called `animal.rb` in your `classwork` folder which includes an Animal class and at least two different types of animals. Give Animal and the animal types some attributes and methods.  

* Ensure that your types of animals can use the methods defined in Animal.
* Overwrite some methods defined in Animal in your Dog class. What happens?
* If Animal has an `attr_accessor :size`, but Dog does not, what happens when you try to set a dog's size?
* What error do you get if you try to call a method that doesn't exist on an animal (i.e. `sammy_the_snake.bark`)?

## Side Note: String Concatenation versus Interpolation
While working through Learn to Program, you may have noticed that you're stringing a lot of strings together with `+`. This can be tedious and dangerous - if you've accidentally added a number to a string (`puts "hello" + 2`), you've encountered an error like:
<pre><code>
TypeError: can't convert Fixnum into String
  from (irb):1:in `+'
  from (irb):1
  from /Users/elise/.rvm/rubies/ruby-1.9.3-p392/bin/irb:16:in `<main>'
</code></pre>  	  

Up until now, we've used string concatenation. We're adding strings together, and every piece that's added on *has* to be a string before it's added. It's perfectly valid to write `puts "hello" + 2.to_i`, but sometimes you can forget to add the `.to_i`.

An alternative to this is String Interpolation. This allows us to put numbers, variables straight into our strings, without worrying about what type they are. 
<pre><code>
puts "hello#{2}" 
</pre></code>
<pre><code>
a = 2
puts "hello#{a}"
</pre></code>

In these examples, we're asking Ruby to stringify what's being interpolated, then add it into our string. Both are identical to `"hello" + 2.to_s`.
