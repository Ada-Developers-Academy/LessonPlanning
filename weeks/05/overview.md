#Week 5: Testing

  There are numerous benefits to testing, but the most obvious is catching mistakes.  Humans make mistakes!  Rails applications are complicated systems with tons of nooks and crannies for your mistakes to hide in.  If you're lucky, your mistakes will keep your application from compiling, and your terminal will display a helpful error.  If you're unlucky, you might spend hours tracking down the causes of an unwanted behavior.  Automated testing saves you time by making your mistakes easier to notice, easier to find, and easier to understand and fix.

##[Test::Unit](/lessons/05_test_unit.md)


##TDD vs. BDD
  Behavior-driven development (BDD), is similar to TDD in that a suite of tests is written before development begins.  BDD focuses on writing a series of high-level specifications for how an application or feature should behave.
  BDD specs do not test how a particular method or chunk of code operates.  These specs are often written from the perspective of a user, and they describe how the application should operate when fully functioning in a browser.


##RSpec
  RSpec is a domain-specific language (DSL) for writing tests in Rails.  It is flexible enough to accomodate granular unit tests or high-level behavior tests.  It is also expressive enough to be understood by non-programmers.  This makes RSpec a useful bridge language between developers and non-technical project managers or clients that allows each party to communicate and agree on how an application should behave.


####Lesson: Write a failing test in Rspec
  - Installation:  include rspec-rails in your Gemfile
  - Using Rspec- syntax
  - Write a controller test, watch it fail
    - Generate a controller... Have the failing tests guide students through building the controller.
  - Watch the tests pass
  - Celebrate!


####Lesson: Write a Ruby program to make existing Rspec tests pass
  - Use the [simon says spec](../../lessons/simon_says_spec.rb)
  - Run the test, watch it fail
  - Make the tests pass by writing a little Ruby program that does all actions specified
  - Watch the tests pass
  - Celebrate!


##RSpec add-ons!
- FactoryGirl: Keep your tests DRY by using creating resources you can use in all of your tests.
- Capybara: Make your tests even more expressive by enhancing their vocabulary with common actions a user might take on a webpage, such as "click_button"


####Lesson: Write tests with capybara and factory girl
  - Installation: include 'capybara' and 'factory_girl' gems
  - Write some integration tests concerning editing nested resources
  - Use Capybara syntax for filling in and submitting forms
  - Build out the resources
  - Watch the tests pass
  - Use FactoryGirl to DRY up the tests
  - Watch the tests pass
  - Celebrate!


####Resources

[Test::Unit](http://guides.rubyonrails.org/testing.html)<br>
[RubyDocs: RSpec](http://rubydoc.info/gems/rspec-rails/frames)<br>
[Rspec Cheatsheet](https://learn.thoughtbot.com/test-driven-rails-resources/rspec.pdf)<br>
[Code School: Testing With Rspec](http://www.codeschool.com/courses/testing-with-rspec)<br>
[Factory Girl](https://github.com/thoughtbot/factory_girl)<br>
[Capybara](http://jnicklas.github.io/capybara/)<br>



