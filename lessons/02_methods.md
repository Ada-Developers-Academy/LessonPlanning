# Methods

## Pluralizing Guesses
In our last example we noticed that "guess" wasn't pluralized. This is a grammatical error that wouldn't fly in a real web application. What we'd really like to do is call a *method* that would give us "guess" or "guesses". In Rails, we could call `"guess".pluralize`, but here we don't have that option since we're using pure ruby. Let's write a custom method that gives us the option.

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
  elsif flavor.include? "coconut"
    puts "Close, but #{flavor} isn't quite what I'm looking for."
    guesses = guesses - 1
    puts "You've got #{guesses} #{pluralize_guess(guesses)} left!"
  else
    puts "BLECH BLECH BLECH! I HATE #{flavor.upcase}."
    guesses -= 1
    puts "You've got #{guesses} #{pluralize_guess(guesses)} left!"
  end
end
</code></pre>

## Creating custom String Methods
Wouldn't it be nice if we could call `"guess".pluralize`, like how we call `"guess".upcase`? What happens if you call `"guess".pluralize` instead of `pluralize_guess(guesses)`?

What we need to do is add our own method to the String class. Since we're only addressing the pluralization of "guess," we'll write a `.pluralize_guess` method. In a larger application, we might want to address more than one word with our pluralize method.

<pre><code>
guesses = 3
favorite_flavor = "coconut"
flavor = ""

class String
  def pluralize_guess(count)
    if count == 1
      "guess"
    else
      "guesses"
    end
  end
end

while guesses > 0
  puts "Hey! Guess my favorite ice cream flavor and I'll give you a prize!"
  flavor = gets.chomp

  if flavor == "coconut"
    puts "Yay! You've won some #{flavor} ice cream!"
  elsif flavor.include? "coconut"
    puts "Close, but #{flavor} isn't quite what I'm looking for."
    guesses = guesses - 1
    puts "You've got #{guesses} #{"guess".pluralize_guess(guesses)} left!"
  else
    puts "BLECH BLECH BLECH! I HATE #{flavor.upcase}."
    guesses -= 1
    puts "You've got #{guesses} #{"guess".pluralize_guess(guesses)} left!"
  end
end
</code></pre>