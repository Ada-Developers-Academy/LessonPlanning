# Date and Time

## Overview
Dat and Time management seems simple, but can be one of the most frustrating elements of writing code. Imagine you're working on an international application and have to deal with a multitude of timezones and time formats! Luckily, you can get time and play with it in interesting ways. We'll check out a few of them here.

## Time.now
In `irb`, try typing `Time.now`. Notice that `Time` is a class, and has methods (`Time.methods`) just like any other class. Navigate over to [RubyDoc](http://www.ruby-doc.org/core-2.0/Time.html)'s documentation on Time to find out more about Time's methods.

## Date.today
You'll need to load the `date` library, so `require "date"` while in IRB. Then, like `Time.now`, try `Date.today`. What's different about the two? [RubyDoc](http://ruby-doc.org/stdlib-2.0/libdoc/date/rdoc/Date.html) has documentation about Date, too - so if you're ever confused, it's a great place to find out exactly what methods there are on Ruby's standard classes! Try out some of Date's common methods: `Date.today.year`, etc.

##DateTime
Better than Time, and better than Date - it's DateTime. You'll most likely be using DateTime in your applications. Try `DateTime.now`. DateTime is a subclass of Date that knows how to handle all things dealing with Time - check out its [RubyDoc](http://www.ruby-doc.org/stdlib-1.9.3/libdoc/date/rdoc/DateTime.html). With DateTime, you can parse dates, create dates from strings, and do all kinds of interesting manipulation.


 
