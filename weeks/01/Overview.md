# Week One

## Introduction
This week, we will focus on the tools you'll be using as a software developer and the basic building blocks of the Ruby programming language. Much of this week's work will be review of topics you learned in your prerequisite work. 

We will cover the following topics:

## [Bash](/lessons/bash.md)
Using Terminal: Navigating and Modifying Files and Directories, Aliases

## [Git](/lessons/git.md)
Source Control and Sharing Code

## [Beginning Ruby](/lessons/ruby-101.md)
History, IRB, Scripts, Numbers, Strings, Variables, Interaction with `gets` and `puts`

## [Classes, Instances, and Methods](/lessons/classes.md)
Creating instances of different types of classes, creating methods with and without parameters, return values

## [Pair Programming](/lessons/pairing.md)

## End of Week Mastery Quiz
TODO: 5-9 additional mastery questions

1) Was pair programming more or less productive? Why?

2) Identify the returned value and class of the returned value for EACH "word" in the following code:

`([1,2,3].reverse.join(" and ")) + "... GO!"`

A: 

- [1,2,3] : Array 
- [3,2,1] : Array
- "3 and 2 and 1" : String
- "3 and 2 and 1... GO!" : String

TODO: Move below into a question.  
```

    class Person
      def initialize(name, age)
        @name = name
        @age  = age
      end
      
      def name
        @name
      end
  
      def age
        @age
      end
    end
    
    ada = Person.new("Ada Lovelace", 132)
    year_born = Date.today.year - ada.age
    "Ada was born in the year " + year_born
```


