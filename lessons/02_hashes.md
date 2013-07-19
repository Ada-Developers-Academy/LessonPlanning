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

## Deleting Elements
It's easy to `.delete` Hash elements. `.delete` will delete the whole element, including the key and value.

<pre><code>
  favorite_flavors.delete("Elise") # Elise doesn't get any ice cream.
</code></pre>  

## Lesson: Hashes as a Data Structure
As we move forward and look at data structures, it is important to *really* understand Hashes. Nested hashes will be the norm for the data you encounter. 

For this lesson, let's build out all the people in your house in a file called "family.rb". Your household could contain multiple people and pets, with many different attributes. Here's my example house:

<pre><code>
  people = {
    "bookis"           => {
      "first_name"     => "bookis",
      "last_name"      => "smuin",
      "favorite_color" => "green",
      "job"            => {
        "title"        => "CEO",
        "company"      => "Luna Sandals",
        "url"          => "http://lunasandals.com"
      }
    },
    "elise"            => {
      "first_name"     => "elise",
      "last_name"      => "worthy",
      "favorite_color" => "pink",
      "job"            => {
        "title"        => "Teacher's Assistant",
        "company"      => "Ada Developers' Academy",
        "url"          => "http://adadevelopersacademy.com"
       }  
     }
  }
  puts people # should show the nested hash
  puts people.count # should show the number of people in your house
  people.each do |key,value|
    puts "#{value["first_name"]}'s favorite color is #{value["favorite_color"]} and they work at #{value["job"]["company"]}."
  end
</code></pre>

In this example, we don't need to use the hash element's key - only the value which contains the attributes of each person. Note that we can access many layers of the hash by using multiple square brackets. 

