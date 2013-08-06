# Arrays

## First, a Step Back to... Data Fundamentals
When we refer to "data" in web development we are typically not referring to bytes of data specifically, but rather human readable data (such as this paragraph). We will be focusing on Ruby and web-related syntaxes for data types, but these concepts go much deeper into computer science and are often only slightly different for different languages. 

We've already looked at a few of these:

- String : A short amount of text, typically less than 255 chars, useful for single words and reference  
- - Text : A variable amount of text, useful for page contents, descriptions, or any other free form text (like this tutorial)
- Numeral
- - Fixnum : A whole number including 0 and negatives
- - Bignum : Fix number over 9^18
- - Float  : A fractional number
- - Decimal : A fractional number
- Boolean : true or false
- Nil : This is the absence of a value, not to be confused with 0, false, or "".

Next, we'll look at Enumerables (or 'collections')  

- Array : A collection of other data type objects. [1,2,3, "Hello World"]
- Hash : A collection of other data type objects with "pointers". A pointer is an identifier that references a data type object. The pointer is commonly an integer ({0 => "Ada"}), but can be a string to be more descriptive ({"first_name" => "Ada"}) 

## Array Overview
So far, we've only worked with single variables at a time. I only have one favorite ice cream flavor. But what if I wanted to aggregate all of our favorite ice cream flavors and write a program about them? What we've learned so far won't help us. We need an Array.

You're already familiar with arrays. They're simple collections. Take, for example, your grocery list:  

* Hummus
* Almonds
* Chicken Sausage
* Dried Apricots

This is an array! If we were to write your grocery list in programming land, it would look like this:
<pre><code>
["Hummus", "Almonds", "Chicken Sausage", "Dried Apricots"]
</code></pre>

Note that all items in your list are Strings. We could just as easily create an array of numbers `[1, 2, 3, 4]`, but it might not be as helpful. We can even create arrays of different data types (even other arrays) ad infinitum! `["a", 2, ["cat", "monkey"]]`
<pre><code>
`["a", 2, ["cat", "monkey"], ["bananas",["marbles", "rocket ships"]]]`
</code></pre>

In short: an Array is a collection of objects and is useful to store a group of objects to iterate through.

- [], symbolizes the collection
- Objects are separated by ","'s.
- Each value can be any object.

## Indexing
Remember that we could pull a range of letters from a string by going like "hello"[0..1]? What we were really doing was relying on the index of each letter. In "hello", "h" is "hello"[0], "e" is "hello[1]", and so forth. Arrays are the same. Let's go back to the grocery list array:
<pre><code>
groceries = ["Hummus", "Almonds", "Chicken Sausage", "Dried Apricots"]
</code></pre>  

* What's groceries[2]?
* What's groceries[-1]?
* How would you return the last two grocery items from this set?
* How would you return the "A" from "Almonds"?

## Push and Pop
We need to be able to add and remove things from our array. Here's where `.push` and `.pop` come in!

<pre><code>
groceries = ["Hummus", "Almonds", "Chicken Sausage", "Dried Apricots"]
groceries.push "Green Olives"
groceries

groceries.push "Old Bananas"
# Wait! We don't want old bananas!
groceries.pop
</code></pre>

## The `.each` Method
Let's say we're planning a weekly breakfast. Each person in the class needs to bring breakfast once. We need to let everyone know what week they'll need to prepare for. We can use the `.each` method!

<pre><code>
ada_class = ["Sandi", "Paula", "Norah", "Rebecca", "Elise"]

ada_class.sort!.each do |student|
  puts "#{student} should bring breakfast for week #{ada_class.index(student) + 1}."
end
</code></pre>

We're introducing a lot of new material here.  

* `.each do |student|`: This probably looks wacky, but once you get the hang of it, it makes sense. The method is saying take the first item in the array, assign it to the variable student, and perform the below code on it. Then, keep going until all items in the array have had the following code applied. Then, return the original array. This is similar to the `while` loops we were looking at before.
* `.sort!`: The `.sort` method does what you'd expect it to - return an alphabetically sorted array. However, it doesn't permanently sort the array. By adding the !, we make sure the array is permanently sorted.
* `.index(student)`: This is showing us the location in the array. Remember, computers start counting with the number 0, not 1, so we have to add 1 to the index returned.

## Lesson: Class's Favorite Ice Cream
Make a script that allows every user to enter in their favorite ice cream. Once someone types "done", The program should puts the flavors in alphabetical order, then puts the total number of flavors entered.


