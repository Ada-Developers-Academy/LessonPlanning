# Weeks 18 - 19: Refactoring Legacy Code

Code refactoring is a technique for restructuring existing code, changing its internal structure without changing its external behavior. The code becomes more readable, simpler, more maintanable, and more extensible. Refactoring should happen continuously in a project, each time new features are added, to keep it clean.

Legacy code is source code inherited from someone else, or from an older version of the project you are working on. It can often be complex and difficult to understand.


####Lecture Outline
1. Examples & Explanations
2. Principles of Refactoring
3. Bad Smells
4. Building Tests
5. Composing Methods
6. Moving Features Between Objects
7. Organzing Data
8. Simplifying Conditionals
9. Making Method Calls Simpler
10. Dealing with Generalizations
11. Big Refactorings
12. Refactoring Tools
13. Refactoring Tests
14. Implementing SOLID


###Principles of Refactoring

"My guiding light is Kent Beck's rules of Simple Design
<ul>
	<li>The code must first be correct (as defined by tests);</li>
	<li>then it should be a clear statement of the design (what J.B.Rainsberger calls "no bad names");</li>
	<li>then it should contain no duplication (of text, of ideas, or of responsibility);</li>
	<li>and finally it must be the smallest code that meets all of the above.</li>
</ul>
It's time to stop refactoring when the code makes a reasonable stab at meeting those goals, and when any further changes would add no further benefit."
-Kevin Rutherford


###Bad Smells

Code smells (aka anti-patterns) are things in code that could indicate an opportunity for improvement.
<ul>
	<li>Duplicated concepts in code</li>
	<li>Multiple responsibilities in a method / class</li>
	<li>Child classes that can not stand in for their parents ([Liskov substitution principle](https://en.wikipedia.org/wiki/Liskov_substitution_principle))</li>
	<li>Excessive complexity</li>
	<li>Non-semantic names</li>
	<li>Dead code</li>
	<li>MVC pattern violations</li>
	<li>Calling eval on unchecked code</li>
	<li>Nested blocks without added value</li>
	<li>Shotgun surgery</li>
</ul>


###Refactoring Tools
See [Ruby Toolbox: Code Metrics](https://www.ruby-toolbox.com/categories/code_metrics).


####Projects
1. Project: revisit an app from a previous week and refactor it
	- Create a list of smelly code instances found within it, and determine whether each one is a real problem
	- Create a refactoring plan for this project, including its tests
	- Implement the plan and fully refactor the app
2. Partner project: refactor an old app that someone else wrote
	- Partner up with a classmate
	- Share with your partner source code (they fork the repo) for an app that you wrote that you feel could use some work, they do the same for you
	- Do not explain to each other anything about the workings of your app- part of the challenge is figuring it out
	- Create a refactoring plan for their app, including its tests
	- Implement the plan and fully refactor the app
	** Alternatively, refactor a small open source app you find on Github


####Resources

[Wikipedia: Refactoring](http://en.wikipedia.org/wiki/Refactoring)<br>
[Refactoring: Ruby Edition by Jay Fields, Shane Harvie, Martin Fowler, Kent Beck](http://www.amazon.com/Refactoring-Ruby-Edition-Jay-Fields/dp/0321603508/ref=sr_1_2?ie=UTF8&qid=1371745491&sr=8-2&keywords=refactoring+martin+fowler)<br>
[Refactoring in Ruby by William C. Wake (accompanying volume to R:RE above)](http://www.amazon.com/gp/product/0321545044?ie=UTF8&tag=thlafa-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=0321545044)<br>
[Testing Legacy Rails Applications slides by Rabble](http://www.slideshare.net/rabble/testing-legacy-rails-apps)<br>
[SimpleCov Code Coverage Analysis Tool by Christoph Olszowka](https://github.com/colszowka/simplecov)<br>
[Interview with Kevin Rutherford about refactoring (video and transcript)](http://www.infoq.com/interviews/rutherford-refactoring-ruby)<br>
[Working Effectively with Legacy Code by Michael Feathers](http://www.amazon.com/books/dp/0131177052)<br>
[Get Rid of That Code Smell blog posts](http://solnic.eu/2012/03/30/get-rid-of-that-code-smell.html)<br>
[Practical Object Oriented Design in Ruby by Sandi Metz](http://www.poodr.info/)<br>
[Theraputic Refactoring talk by Katrina Owen](http://kytrinyx.com/therapeutic-refactoring)<br>
[Ruby Rogues podcast episode about refactoring with Katrina Owen](http://rubyrogues.com/069-rr-therapeutic-refactoring-with-katrina-owen/)<br>