# Week Ten

## Authoring a Gem

### Structure
A Ruby gem can be as simple as a single Ruby script inside of the `lib` directory and a `.gemspec` file.

    /gem_name
      ada_dev.gemspec
      /lib
        ada_dev.rb

The `.gemspec` describes what's in the gem, the authors, versions, files, and many other optional pieces of information.

    Gem::Specification.new do |gem|
      gem.name        = 'ada_dev'                           # Required
      gem.version     = '0.0.1'                             # Required
      gem.summary     = "Ada Developers Gem"                # Required
      gem.authors     = ["Bookis Smuin"]                    # Required
      gem.files       = ["lib/ada_dev.rb"]                  # Required
      gem.date        = '2013-06-23'
      gem.description = "A gem to automate Ada Dev life"
      gem.email       = 'bookis.smuin@gmail.com'
      gem.homepage    = 'http://rubygems.org/gems/ada_dev'
    end

* `gem.name` is the name the gem will be released as.
* `gem.version` this is the current version of the gem (more on versioning later)
* `gem.summary` is a brief summary of the what the gem.
* `gem.authors` the gem creators
* `gem.files` the files to be packaged with the gem

See the [Gem Specifications](http://docs.rubygems.org/read/chapter/20) for more on `.gemspec` files
    
### Naming a gem
Naming a gem has a couple nuances. First make that the name of your gem is not already used, check [github](http://github.com) and [rubygems](http://rubygems.org). Next is the structure of the name. Notice in the example above we use an `_` rather a dash to seperate words, this is to remain consistent with Ruby conventions, a file defining a class named `AdaDev` would normally be named `ada_dev.rb`. This way when we require the files and install the gem, we will use the same name: `ada_dev`.


### Building a gem

Lets add some quick code to our `ada_dev.rb` file

    module AdaDev
      class Student
        def self.count
          24
        end
      end
    end
    
Now we can build the gem

    gem build ada_dev.gemspec

This will create the bundled `.gem` file. To install the gem on our system run `gem install ada_dev-0.0.1.gem`, now try it out.

    irb -rubygems # -rubygems is not needed for Ruby > 1.9.3 as it's included
    require 'ada_dev'
    AdaDev::Student.count #=> 24
    
### Semantic Versioning

Semantic versioning consists of three numbers seperated by `.` like `0.0.1`, each number determines a level of significance described like `MAJOR.MINOR.PATCH`

* MAJOR version when you make incompatible API changes,
* MINOR version when you add functionality in a backwards-compatible manner, and
* PATCH version when you make backwards-compatible bug fixes.

So the appropriate number would be incremented by one on each release, with all downstream numbers reseting to 0, so if we we're to add functionality in a backwards-compatible way, we would increment the MINOR version number, and set the PATCH number back to 0, `0.1.0`. The [documentation](http://semver.org) for semantic versioning is quite robust, check it out for a more complete outline.

### Releasing a gem

Now we have this awesome gem that tells us how many students are in ADA. Let's get it out into the wild! It is possible to release and install gems with a git repo:

    gem "ada_dev", :git => "git://github.com/Ada-Developer-Academy/ada_dev.git"
    
But generally rubygems.org is the goto source. To begin, you’ll need to create an account on [RubyGems.org](RubyGems.org). Releasing a gem to ruby gems is as easy as:

    gem push ada_dev-0.0.1.gem
    
Tada! Our gem is live. Anyone can now install it using rubygems with `gem install ada_dev`. 

### References

- [RubyGems Guides](http://guides.rubygems.org)
- [Gem Specification Reference](http://docs.rubygems.org/read/chapter/20)
- [Creating a gem with Bunlder](http://railscasts.com/episodes/245-new-gem-with-bundler)