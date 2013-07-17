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

