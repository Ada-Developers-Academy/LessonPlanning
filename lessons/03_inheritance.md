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