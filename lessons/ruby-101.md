# Beginning Ruby

## Overview
We're going to start working Ruby! Ruby is a programming language and will be the foundation of most everything we learn from here on out. 

Like learning any new language, getting good at Ruby will just take practice. You'll find over time that there's nothing "magic" about programming - you're issuing commands that a computer understands and can execute. 

## Our First Textbooks
We'll be using [Beginning Ruby by Peter Cooper](http://beginningruby.org/) and [Learn to Program](http://pine.fm/LearnToProgram/) to get ourselves acquainted with Ruby. 

## History and Matz
Ruby is different than other programming languages. It was written with the human in mind, rather than the computer. Its creator, Yukihiro Matsumoto, wanted to create a programming language that was *fun* for programmers. We've chosen Ruby for you to learn because it's surprisingly easy. It's a great platform for you to launch your career as a developer. 

Ruby was first launched in 1995 by [Yukihiro Matsumoto](http://en.wikipedia.org/wiki/Yukihiro_Matsumoto "Yukihiro Matsumoto - Wikipedia, the free encyclopedia"). Many of the design concepts were taken from [Perl](http://en.wikipedia.org/wiki/Perl) and [SmallTalk](http://en.wikipedia.org/wiki/Smalltalk). One of the unique things about Ruby is the core cultural principles associated with the language, much of which was influenced by Matsumoto (often referred to simply as Matz). 

>"Often people, especially computer engineers, focus on the machines. They think, 'By doing this, the machine will run faster. By doing this, the machine will run more effectively. By doing this, the machine will something something something.' They are focusing on machines. But in fact we need to focus on humans, on how humans care about doing programming or operating the application of the machines. We are the masters. They are the slaves." *-Matz*

We'll check out [Matz's RubyConf 2012 keynote](http://www.youtube.com/watch?v=hgs_fVfsduA) to understand more about this quirky (and funny) language designer. 

## Installation
You should already have ruby installed on your computer. However, let's verify this by running `ruby -v` from the command line. If you have anything less than version 1.9.3, you need to update, so let the instructor know. 

## Lesson: Ruby in IRB
Ruby can be directly executed from your terminal using IRB (**I**nteractive **R**u**b**y). IRB is be a helpful tool for learning, quick computations, documentation, and debugging problems.

From the command line, enter `irb`. Once you're in IRB:

* Try doing some arithmetic in irb, like `1 + 2` or `4 / 3`. Note what ruby does with the decimal places.
* Try inputting a string, like "hello". Note what is *returned*: `=> "hello"`
* Try asking the computer to `print "hello"`. What is returned? Why is it different?
* Try saying "hello" 10 times with `10.times do print "hello. " end`

## Lesson: Ruby Scripts and Numbers
Ruby can also be executed by using a script (which is code in a single file). We can run files in ruby by using the `ruby` command line tool. 

In a terminal window, type `ruby -h` to see the usage and a list of options for the `ruby` tool. To run a script with Ruby, type `ruby file_name.rb`. By doing this, you'll  execute the contents of the file.

We'll use [Learn to Program](http://pine.fm/LearnToProgram/)'s first couple of chapters to get you acquainted with running Ruby scripts, as well as introduce you to some common Ruby *classes* - integers and floats.  

* Since we've learned to navigate files and create git repositories, let's put our new understanding to work! Create a folder called "ltp" within your projects directory. Initialize it as a new git repo for all of your Learn to Program lessons. 
* Walk through Chapter 2 of Learn to Program, following along on your computer. Save your `calc.rb` file in your "ltp" folder, and commit your changes as you go along. 
* For the questions in section 2.5, make new files for each. 
* When you're finished, create an ltp repo on GitHub and push all of your work up so it is visible for the world to see.

## Lesson: Words
There's a whole lot more to programming than doing arithmetic! Let's walk through Chapter 3 of Learn to Program, where we'll deal with words in Ruby - called "strings". We can walk through this whole chapter in IRB. No need to create a new script.

One item of note is that Chris Pine uses single quotations for his strings: `'hello'` instead of `"hello"`. You'll see that this approach becomes problematic when you have apostrophes or quotes inside your string - all of them need to be escaped with a backslash. Instead of using the single quote method that Mr. Pine uses, we'll stick to double quotes. This will be helpful down the road when we learn string interpolation. 

## Lesson: Variables
If you've done algebra, you're already familiar with variables (like a + b = c). It turns out that they're used A LOT in programming, too.

So far, we haven't been able to hang on to or reuse any of the code we've written - once it's 'puts'ed, it's gone. Variables are a way to hold on to pieces of code so they can be used again.

We'll walk through Chapter 4 and Chapter 5.1-5.2 in IRB. For 5.3-5.6, you'll need to create script files in your "ltp" folder. For 5.6, create two files: `full_name_greeting.rb` and `favorite_number.rb` and make sure they get up on GitHub.

## Mastery Topics  
* Integers and Floats
* Strings
* Variables
* `puts` and `gets`

<!-- ## Ruby Structure
Understanding the core concepts of programming languages can be the most challenging part. We will spend a good deal of time learning the fundamental ideas and structure that surround the most basic ruby usage. Programming languages can be quite difficult to grasp, not because they over overly complex, but because they are abstract ideas. If we can understand how ruby works we can certainly be more effective in writing ruby code. 

TODO: Ruby Structure Lecture Outline  

- Object Orientation: What is an object?
- Classes
- Instances
- Class Methods
- Instance Methods
- Inheritance
- State -->
