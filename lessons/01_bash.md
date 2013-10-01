# Bash 

## Don't Be Afraid!
As a programmer, you'll need to become fluent with your computer's terminal. It's not as scary as it sounds, though! 

Most of us are used to GUI-based (<strong>G</strong>raphical **U**ser **I**nterface) operating systems like Windows or OS X, but a command line approach is much more effective for many tasks in programming. For example, Terminal will be the place where you'll navigate through and modify your files and folders (also called directories). Terminal is also where you'll type your Git commands, which we'll cover in the next section.  

## Bash
Your terminal is a command interpreter that connects to  a "shell", which is used for manipulating a computer. Bash, what we are using, is a UNIX Shell (<strong>B</strong>ourne **A**gain **Sh**ell). It's the default shell for Linux and OS X, and has been ported to Windows with [cygwin](http://www.cygwin.com). Many of the functions and tools needed for Ruby development will be executed from bash.

## Lesson: Terminal Basics
To get a little more comfortable with `bash`, let's start with an introductory video from [Marius at MacTuts](http://mac.tutsplus.com/tutorials/terminal/navigating-the-terminal-a-gentle-introduction/).

After watching this video, you should know how to:  

* Open Terminal.app
* Show folders and files in your current directory
* Show your current location
* Change directories
* Open files
* Create new files and directories
* Copy files to different directories
* Move files to different directories
* Remove files and directories

## Lesson: Aliases and .bash_profile
As you get more comfortable with using Terminal, you'll notice that you start typing some things over and over again. This is particularly common with Git, which we'll cover next. Check out the [MacTuts blog post](http://mac.tutsplus.com/tutorials/terminal/speed-up-your-terminal-workflow-with-command-aliases-and-profile/) on aliases and `.bash_profile`. After reading through it, you should know how to access your `.bash_profile`. 

To make your future project work easier, create a directory called "projects" on your Desktop, then make an easy alias in your `.bash_profile` so you can always get to it. Make sure to use an absolute path (not a relative path) so you can access it from anywhere.

## Lesson: Make Your Terminal Talk
`echo` is a command that outputs text onto your command line. Try `echo "Hello World!"`

## Lesson: How to find the manuals
In Unix based systems, you can find documentation for most commands in the terminal using `man command`. Let's say you were interested in finding out more about listing files with `ls`. In the terminal you would enter `man ls`.
You will be presented with the name of the command, the synopsis, a description, and usage examples. A great site to identify only the parts used in your command is [Explain Shell](http://explainshell.com/). Here is the what ExplainShell says about `ls -aC`:
![ExplainShell ls -aC](http://f.cl.ly/items/1e2z3d1o1X0Y0A04190b/Screen%20Shot%202013-10-01%2014%3A52%3A36%20%2B0000.png "ExplainShell ls -aC")

### Mastery Topics

* General Description
* Uses / Convenience / Power over GUI
* Navigation (`cd`/`popd`/`pushd`)
* `echo` 
* Hidden files (.hidden_file)
* .bash_profile

### Advanced Mastery Topics

* Permissions (`chmod`)
* Scripts
* Variables (Local & Environment)

### Resources
[Bash Hackers Wiki](http://wiki.bash-hackers.org/scripting/basics)  
 
[MacTuts' Navigating the Terminal: A Gentle Introduction](http://mac.tutsplus.com/tutorials/terminal/navigating-the-terminal-a-gentle-introduction/)  

[MacTuts blog post on .bash_profile and aliases](http://mac.tutsplus.com/tutorials/terminal/speed-up-your-terminal-workflow-with-command-aliases-and-profile/) 

[Explain Shell](http://explainshell.com/)  
