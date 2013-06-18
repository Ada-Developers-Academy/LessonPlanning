# Week 5

# Testing!

## Why test?
  There are numerous benefits to testing, but the most obvious is catching mistakes.  Humans make mistakes!  Rails applications are complicated systems with tons of nooks and crannies for your mistakes to hide in.  If you're lucking, your mistakes will keep your application from compiling, and your terminal will display a helpful error.  If you're unlucky, you might spend hours tracking down the causes of an unwanted behavior.  Automated testing saves you time by making your mistakes easier to notice, easier to find, and easier to understand and fix.

## Test first: TDD
  Writing tests before implementing features helps developers get the most out of software testing.  Test-first, or test-driven development (TDD) forces developers to think not only about whether their applications are working, but also about how they *should* be working.  Writing tests first defines a functional goal for a particular feature or piece of code.  The "red-green-refactor" development cycle refers to writing a failing test (red), coding a feature that makes your test pass (green), and refactoring as necessary.  Once you get used to test-driven development, this cycle will break your work into managable chunks, and keep you focused on building the software you want.

### Test::Unit
  Test::Unit is a testing framework that comes prepackaged with Rails.  Test::Unit works well for testing individual methods or small chunks of code to make sure that they are working as the programmer expects.  Tests written in Test::Unit are based on assertions about how a particular method might behave.  If the assertions turn out to be true, the tests pass.  Pretty simple.

## TDD vs. BDD
  Behavior-driven development (BDD), is similar to TDD in that a suite of tests is written before
### Rspec
