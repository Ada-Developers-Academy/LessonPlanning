##TDD vs. BDD
    Behavior-driven development (BDD), is similar to TDD in that a suite of tests is written before development begins.  BDD focuses on writing a series of high-level specifications for how an application or feature should behave.
    BDD specs do not test how a particular method or chunk of code operates.  These specs are often written from the perspective of a user, and they describe how the application should operate when fully functioning in a browser.

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
