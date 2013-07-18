# Hashes

## Overview 
Hashes are similar to arrays in that they are collections of information. Unlike arrays, though, hashes have a key and value. We wouldn't need to store our grocery list as a hash, but maybe we'd want to store everyone's favorite ice cream as a hash. This would allow us to know who liked what ice cream. 

Unlike an array, hashes use curly brackets and may use an arrow `=>` to denote a key/value pair.

<pre><code>
  { "Elise" => "Coconut" }
  { "key" => "value" }
  { key: "value" } # Valid syntax using the symbol `:key` rather than a string
</code></pre>

If we want to retrieve values from a key, it's similar to the way we used indexes with the array:

<pre><code>
favorite_flavors = { "Elise" => "Coconut", "Norah" => "Chocolate", "Paula" => "Raspberry Sorbet" }
favorite_flavors["Norah"]
</code></pre>

## Iterating through Hashes
We can use the `.each` method with hashes, too. With hashes, we have access to both the key and the value for each element of the hash. 
<pre><code>
favorite_flavors = { "Elise" => "Coconut", "Norah" => "Chocolate", "Paula" => "Raspberry Sorbet" }

favorite_flavors.each do |person, flavor|
puts "#{person}'s favorite flavor is #{flavor}!"
end
</code></pre>

