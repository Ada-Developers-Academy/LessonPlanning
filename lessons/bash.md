# Don't Be Afraid!
As a programmer, you'll need to become fluent with your computer's terminal. It's not as scary as it sounds, though! 

Most of us are used to GUI-based (**G**raphical **U**ser **I**nterface) operating systems like Windows or OS X, but a command line approach is much more effective for many tasks in programming. For example, Terminal will be the place where you'll navigate through and modify your files and directories (also called folders). Terminal is also where you'll type your Git commands, which we'll cover in the next section.  

# Bash
Your terminal is a "Shell", which is a command-line tool for operating a computer. Bash, what we are using, is a UNIX Shell (**B**ourne **A**gain **Sh**ell). It's the default shell for Linux and OS X, and has been ported to Windows with [cygwin](http://www.cygwin.com). Many of the functions and tools needed for Ruby development will be executed from bash.

# Lesson: Terminal Basics
Let's get a bit more comfortable with Bash. Start with an introductory video from [MacTuts](http://mac.tutsplus.com/tutorials/terminal/navigating-the-terminal-a-gentle-introduction/). Follow along with the instructor Marius and pause as needed. 

After watching this video, you should know how to:  

* Open Terminal
* Show folders and files in your current directory
* Show your current location
* Change directories
* Open files
* Create new files and directories
* Copy files to different directories
* Move files to different directories
* Remove files and directories

# Lesson: Aliases and .bash_profile
As you get more comfortable with using Terminal, you'll notice that you start typing some things over and over again. This is particularly common with Git, which we'll cover next. Check out the [MacTuts blog post](http://mac.tutsplus.com/tutorials/terminal/speed-up-your-terminal-workflow-with-command-aliases-and-profile/) on aliases and `.bash_profile`. After reading through it, you should know how to access your `.bash_profile`. 

To make your future project work easier, create a directory called "projects" on your Desktop, then make an easy alias in your `.bash_profile` so you can always get to it. Make sure to use an absolute path (not a relative path) so you can access it from anywhere.

# Lesson: Make Your Terminal Talk
`echo` is a command that outputs text onto your command line. Try `echo "Hello World!"`

### Mastery Topics

* General Description
* Uses / Convenience / Power over GUI
* Navigation
* `echo` 
* Invisible .files
* .bash_profile

### Advanced Mastery Topics

* Permissions
* Scripts
* Variables (Local & Environment)

### Resources
[Bash Hackers Wiki](http://wiki.bash-hackers.org/scripting/basics "The basics of shell scripting    [Bash Hackers Wiki]")  
 
[MacTuts' Navigating the Terminal: A Gentle Introduction](http://mac.tutsplus.com/tutorials/terminal/navigating-the-terminal-a-gentle-introduction/)  

[MacTuts blog post on .bash_profile and aliases](http://mac.tutsplus.com/tutorials/terminal/speed-up-your-terminal-workflow-with-command-aliases-and-profile/) 