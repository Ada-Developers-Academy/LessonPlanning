# Week 5

# Testing!

  ## Why test?
    There are numerous benefits to testing, but the most obvious is catching mistakes.  Humans make mistakes!  Rails applications are complicated systems with tons of nooks and crannies for your mistakes to hide in.  If you're lucking, your mistakes will keep your application from compiling, and your terminal will display a helpful error.  If you're unlucky, you might spend hours tracking down the causes of an unwanted behavior.  Automated testing saves you time by making your mistakes easier to notice, easier to find, and easier to understand and fix.

  ## Test first: TDD
    Writing tests before implementing features helps developers get the most out of software testing.  Test-first, or test-driven development (TDD) forces developers to think not only about whether their applications are working, but also about how they *should* be working.  Writing tests first defines a functional goal for a particular feature or piece of code.  The "red-green-refactor" development cycle refers to writing a failing test (red), coding a feature that makes your test pass (green), and refactoring as necessary.  Once you get used to test-driven development, this cycle will break your work into managable chunks, and keep you focused on building the software you want.

    ### Test::Unit
      Test::Unit is a testing framework that comes prepackaged with Rails.  Test::Unit works well for testing individual methods or small chunks of code to make sure that they are working as the programmer expects.  Tests written in Test::Unit are based on assertions about how a particular method might behave.  If the assertions turn out to be true, the tests pass.  Pretty simple.

  ## TDD vs. BDD
    Behavior-driven development (BDD), is similar to TDD in that a suite of tests is written before development begins.  BDD focuses on writing a series of high-level specifications for how an application or feature should behave.
    BDD specs do not test how a particular method or chunk of code operates.  These specs are often written from the perspective of a user, and they describe how the application should operate when fully functioning in a browser.

    ### RSpec
      RSpec is a domain-specific language (DSL) for writing tests in Rails.  It is flexible enough to accomodate granular unit tests or high-level behavior tests.  It is also expressive enough to be understood by non-programmers.  This makes RSpec a useful bridge language between developers and non-technical project managers or clients that allows each party to communicate and agree on how an application should behave.

      ### RSpec add-ons!
      - FactoryGirl: Keep your tests DRY by using creating resources you can use in all of your tests.
      - Capybara: Make your tests even more expressive by enhancing their vocabulary with common actions a user might take on a webpage, such as "click_button"


## Resources

### Test::Unit
http://guides.rubyonrails.org/testing.html

### RSpec
http://rubydoc.info/gems/rspec-rails/frames
https://learn.thoughtbot.com/test-driven-rails-resources/rspec.pdf
http://www.codeschool.com/courses/testing-with-rspec

### RSpec Extras
https://github.com/thoughtbot/factory_girl
http://jnicklas.github.io/capybara/



