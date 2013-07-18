# Flow Control and Iteration

## Overview
This weekend, you worked through a lot of material. You used conditional statements like `if` and `else`, learned how to loop with `while` and `until`, and even learned a new data type: the Array. Let's briefly review what you learned.

## Comparison and Conditionality with `if`
The most basic way of using `if` is in conjunction with a comparison returning `true` or `false`. You're evaluating an expression, then returning something based on the results of the expression.

In IRB, what does the following expression return?
<pre><code>
  2 > 3
</code></pre>

This is our first experience with returning `true` or `false`. Having these around allows us to do interesting things using `if` statements:

<pre><code>
  puts "bigger" if 2 > 3
</code></pre>

What happens in IRB? 

### String Comparison
You can also compare strings. What happens when you compare:
<pre><code>
  "your name" > "my name"
</code></pre>

This can be confusing. We're actually doing an alphabetical sort. Words are ranked based on their position: so "apple" is less than/smaller than "banana".

## Lesson: First in Line
Write a program that asks a user for their name, then evaluates their name against your own. If your name is later in the alphabet, it should let the user know that they should be in line before you. Try it on someone in class.

## Branching and Logic
We've looked at using `if` statements while making comparisons, but `if` is much more powerful than just that. Most commonly `if` is used for branching. Like you saw in Learn to Program, `if` and `else` allow you to have your program return different things based on different conditions. 

<pre><code>
puts "Hey! Guess my favorite ice cream flavor and I'll give you a prize!"
flavor = gets.chomp

if flavor == "coconut"
  puts "Yay! You've won some #{flavor} ice cream!"
elsif flavor.include? "coconut"
  puts "Close, but #{flavor} isn't quite what I'm looking for."
else
  puts "BLECH BLECH BLECH! I HATE #{flavor.upcase}."
end
</pre></code>

## Looping
What if we want to give people the option to guess my favorite ice cream flavor multiple times? We can also add a `while` statement.

<pre><code>
favorite_flavor = "coconut"
flavor = ""

while flavor != favorite_flavor
  puts "Hey! Guess my favorite ice cream flavor and I'll give you a prize!"
  flavor = gets.chomp

  if flavor == "coconut"
    puts "Yay! You've won some #{flavor} ice cream!"
  elsif flavor.include? "coconut"
    puts "Close, but #{flavor} isn't quite what I'm looking for."
  else
    puts "BLECH BLECH BLECH! I HATE #{flavor.upcase}."
  end
end
</code></pre>

This is a pretty nifty little script. Note that we've broken out my favorite flavor into a variable. This allows me to set it only in one place, rather than have to search the program for every place we mention "coconut" (now there's 2). Remember that a single = means you're setting a variable, while double == is used to evaluate equality.

We also added in some other new stuff:

* `.include?`
* `!=`

If we wanted to give them three chances, we could set a variable equal to three and count down as the user makes wrong guesses:

<pre><code>
guesses = 3
favorite_flavor = "coconut"
flavor = ""

while guesses > 0
  puts "Hey! Guess my favorite ice cream flavor and I'll give you a prize!"
  flavor = gets.chomp

  if flavor == "coconut"
    puts "Yay! You've won some #{flavor} ice cream!"
  elsif flavor.include? "coconut"
    puts "Close, but #{flavor} isn't quite what I'm looking for."
    guesses = guesses - 1
    puts "You've got #{guesses} guess left!"
  else
    puts "BLECH BLECH BLECH! I HATE #{flavor.upcase}."
    guesses -= 1
    puts "You've got #{guesses} guess left!"
  end
end
</code></pre>

There are a couple problems with this code, though. Can you spot anything that looks like it could be done better?

## Refactoring
We've encountered our first opportunity to refactor! Refactoring is an oft-used skill for programmers. It entails removing duplication and improving code readability, clarity, and concision. We'll following the *DRY* principle here, which means "don't repeat yourself".

What can we do to remove the duplication between the two else statements?

<pre><code>
guesses = 3
favorite_flavor = "coconut"
flavor = ""

def pluralize_guess(count)
  if count == 1
    "guess"
  else
    "guesses"
  end
end

while guesses > 0
  puts "Hey! Guess my favorite ice cream flavor and I'll give you a prize!"
  flavor = gets.chomp

  if flavor == "coconut"
    puts "Yay! You've won some #{flavor} ice cream!"
  else
    if flavor.include? "coconut" 
      puts "Close, but #{flavor} isn't quite what I'm looking for."
    else
      puts "BLECH BLECH BLECH! I HATE #{flavor.upcase}."
    end
    guesses -= 1
    puts "You've got #{guesses} #{pluralize_guess(guesses)} left!"
  end
end
</code></pre>

Beautiful! We now have clean, DRY code. Of course, there's always room for improvement, but this is a GREAT starting point. There are a couple alternatives to `if` and `while`. What if we want to do the opposite? We can simply use `unless` and `until`. 

## Lesson: Ice Cream, Flip-Flopped
Try writing the ice cream script above replacing `if` and `while` with `unless` and `until`.

## Next Up: Methods
We also want to fix the unfortunate always-singular "guess". We'll tackle that in the next section on methods.

