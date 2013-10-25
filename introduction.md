# Ada Developers' Academy
Ada Developers' Academy’s 24-week introduction to web application development is meant to cover both a wide breadth of topics and particular depth into key knowledge areas. At the program’s completion, students will be well on their way to being proficient web developers with the tools and skills to build most web applications. 

## What are Web Applications?
Static websites and web applications have little distinction to many people. What's the difference? 

Static websites are one or more documents that do not (or rarely) change. An example of this type of web content is your local dentist's website. There might be 5 pages: a homepage, rates, location, contact, and testimonials. The content typically does not change, and if it does, an administrator will update the document on the server. Each individual document is transferred and displayed to the requester. 

Alternatively, a **web application** is software that is hosted on a server. The user requests a page in a similar manner to the way they'd visit a static website, but the software receives the request and generates the response (the page) dynamically. This can be seen in Facebook. All of the data is stored in a database. The software determines the most relevant information for the user, formats the data in HTML and sends the dynamic content back to the web browser. Web applications are popular because of their ease of use, access, distribution, flexibility, and maintainability over desktop applications. 

Other common examples include:

* Webmail
* eCommerce / Online Stores
* Online Auctions
* Wikis

### Development
Web application software can be written in many ways. Software developers will run the application's code on a local server to be able to quickly test and use the application without the need to deploy code to a remote server. Development is often simplified by using frameworks such as Ruby on Rails and shared within a team using version control software such as Git. Developers will build the software according to specs, user stories, wireframes, and guidelines specified by the project owners. Quality assurance (QA) and testing play an important role in the development and maintenance of any web application.

## Prerequisites
We want to ensure that everyone coming into Ada Developers' Academy has similar baseline knowledge. Programming simply takes practice, and the more time you devote to it, the better you’ll be. To that end, please carve out some time to prepare for your first day.

### Assignments
The following assignments are due before the first day of class. ADA mentors will be available during business hours to help with any problems that you encounter.

* Read: [Learn Ruby the Hard Way](http://ruby.learncodethehardway.org)
* Environment Setup: Read through [Ruby and RVM Installation](/lessons/00_ruby-rvm-installation.md). If you choose to do so, you may use the [Rails Installer](http://railsinstaller.org) to download and install the required development tools (however, you may encounter bugs).
* Create an account and fill out your profile on [Github](http://www.github.com) as it will be an important web service in our program.
* Complete the following online tutorials
    - [Try Ruby](http://tryruby.org)
    - [Git Immersion](http://gitimmersion.com)

## Classroom
At ADA, we want to provide a learning environment that is comfortable, positive and packed with learning. To do this, each day will be loosely structured in the following way:

* **Instruction** - Instruction will be 1-4 hours, presented by an instructor or a mentor. This is how new topics will be introduced. Students may be asked to install software, follow along, and execute code during the lesson, so be prepared to listen, interact, and ask questions.
* **Assignments** -  Each day students will be given daily assignments to complete. The assignments will be relevant to the day's topics. Each assignment must be completed and submitted to GitHub by the following morning. The day's assignments will range from 1-10 short problems and will vary in difficulty depending on the circumstances.
* **Presentations** - Students should expect to give "Lightning Talk" style presentations to small groups of other students as well as the the class as a whole.
* **Projects** - Starting in week two, students will have to complete projects. Projects are larger assignments that will have a variety of issues to address and allow students to get creative by designing and implementing their own solutions to complex problems. Projects may last anywhere from three days to three weeks depending on complexity. Many projects will be in teams. Students will be expected to work with each other by collaborating on code via git and pair programming.  
* **Project Time** - Students will be given time to work on projects in the classroom when applicable. During project time, students can ask questions and request the help of available instructors or mentors. 
* **Speakers** - Mentors and guest speakers may occasionally be scheduled to lecture on a variety of topics, from technical coding to programming culture.
* **Reading Assignments** - Reading assignments will be given on a weekly basis. Students are expected to read the material outside of class.
* **Review** - Students will occasionally review their progress with the instructors. Instructors will typically schedule reviews every couple of weeks, but students are welcome to request a review at any time.
* **Community Involvement** - Students will be expected to participate in local tech events - meetups, symposiums, conferences, hack nights - hosted by groups in the greater Seattle technical community. 
 
### Typical Day

* **8:00 - 10:00** - Instruction of new material
* **10:00 - 10:30** - Daily assignments presented and explained 
* **10:30 - 10:45** - Break
* **10:45 - 12:30** - Continued instruction
* **12:30 - 1:30** - Lunch
* **1:30 - 2:30** - Guest speaker
* **2:30 - 5:00** - Project work
* **4:00 - 5:00** - Student review with instructors

### IRC channel

There is a group of volunteers who have offered to hang out online all day to answer any questions you may have as you learn your new craft. They're in an IRC chatroom called #adadevacademy on freenode.

If you're not familiar with IRC, here is a set of instructions that will help you find your volunteer question-answerers:

#### Obtain an IRC client 

IRC clients vary in their features and commands, but that's nothing to worry about. One popular option on Mac is Adium (https://adium.im/). Pidgin (http://www.pidgin.im/download/) is another popular option which runs on Linux, MacOS, and Windows.

Commands preceded by / in the following instructions can typically be typed into an already-open chat window. There should be menus/dialogs/settings in your chat client to accomplish each of these results as well, but we've just included the commands to make things simple.

== Connect to the IRC network==

* Obtain and run an IRC client.
* Connect to chat.freenode.net. You can use your client's dialogs and settings to get this done. This can also be accomplished with the command `/server chat.freenode.net`.
* If your client has not provided you with the option already, select a nickname. You can typically change your nickname with the command `/nick [new-nickname-here]`
* If you have registered this nickname, identify yourself to the Freenode servers (see below).
* Join one or more channels: For instance, `/join #adadevacademy`


== Register your nickname, identify, and enforce ==
If you connect frequently, you should register your nick with the NickServ service. This helps you establish "ownership" over a nickname: you can remove other users who are using the nickname, and it also provides a small amount of protection against people impersonating you using the nickname. 

For instructions how to register, type `/msg nickserv help register`. This will inform you that the syntax for registration is
 `/msg nickserv register [password] [your@email.address.com]`
You should substitute an actual password for [password]. *It is a bad idea* to use something easily guessed. It is also a bad idea to use another password for more secure things you do - IRC passwords should not be considered "secure", and it is easy to accidentally type your password into a channel instead of identifying with it (see below).  Of course, you should insert your actual email address where indicated above.  Then, check your inbox for a message from freenode.  It's worth noting that for all of these commands, you don't need the "["brackets"]". 

To take advantage of your registration you must identify yourself with NickServ every time you connect. The syntax for this is `/msg nickserv identify [password]`
Your IRC client may provide an option to automatically send this message when you connect. Consult its documentation for more information. If you do not identify with your account occasionally, your registration might be removed by freenode staff if someone else wants the nickname (typically after a period of 60 days).


To change your password, use the command (after identifying)
`/msg nickserv set password [NewPasswordGoesHere]`

IRC clients typically have an option to use an 'alternate nickname' to use if the primary nickname is in use when you connect (for example, if someone else is using it, or if you have been abruptly disconnected and a "ghost" of your original connection remains). Freenode recommends that you group this alternate nick (`/msg nickserv help group`) to your primary nickname. Once your nick is registered, you can enable 'enforce'.  This will force any user claiming the nick to identify with the password within 30 seconds.  This protects you from imposters taking your nick while you're offline.  Since you configured your client to automatically identify, nothing changes for you (except being protected).  `/msg nickserv set enforce on`

See also: http://freenode.net/faq.shtml#registering

See you online!
