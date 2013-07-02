#Week 11: Security, Multitenancy


##Security
Web applications are logical points of entry for bad guys looking to loot a company's online assets. They may be attempting to access sensitive data, damage the company's reputation by altering public information, install unsolicited email sending software, or just wreak havoc for fun. The majority of existing web apps are vulnerable to some type of attack. To protect yours, you need to be familiar with possible security flaws and types of attack and utilize existing tools and Rails defaults to help protect it.


####Lecture Outline
1. Default Security Mechanisms in Rails
2. Types of web application security flaws (via [OWASP](https://www.owasp.org/index.php/Category:OWASP_Top_Ten_Project))<br>
	<ul>
		<li>[SQL injection](http://rails-sqli.org/)</li>
			<p>Injection flaws, such as SQL, OS, and LDAP injection occur when untrusted data is sent to an interpreter as part of a command or query. The attacker’s hostile data can trick the interpreter into executing unintended commands or accessing data without proper authorization.</p>
		<li>Broken authentication and session management</li>
			<p>Application functions related to authentication and session management are often not implemented correctly, allowing attackers to compromise passwords, keys, or session tokens, or to exploit other implementation flaws to assume other users’ identities.</p>
		<li>Cross site scripting (XSS)</li>
			<p>XSS flaws occur whenever an application takes untrusted data and sends it to a web browser without proper validation or escaping. XSS allows attackers to execute scripts in the victim’s browser which can hijack user sessions, deface web sites, or redirect the user to malicious sites.</p>
		<li>Insecure direct object references</li>
			<p>A direct object reference occurs when a developer exposes a reference to an internal implementation object, such as a file, directory, or database key. Without an access control check or other protection, attackers can manipulate these references to access unauthorized data.</p>
		<li>Security misconfiguration</li>
			<p>Good security requires having a secure configuration defined and deployed for the application, frameworks, application server, web server, database server, and platform. Secure settings should be defined, implemented, and maintained, as defaults are often insecure. Additionally, software should be kept up to date.</p>
		<li>Sensitive data exposure</li>
			<p>Many web applications do not properly protect sensitive data, such as credit cards, tax IDs, and authentication credentials. Attackers may steal or modify such weakly protected data to conduct credit card fraud, identity theft, or other crimes. Sensitive data deserves extra protection such as encryption at rest or in transit, as well as special precautions when exchanged with the browser.</p>
		<li>Missing function level access control</li>
			<p>Most web applications verify function level access rights before making that functionality visible in the UI. However, applications need to perform the same access control checks on the server when each function is accessed. If requests are not verified, attackers will be able to forge requests in order to access functionality without proper authorization.</p>
		<li>Cross-site request forgery (CSRF)</li>
			<p>A CSRF attack forces a logged-on victim’s browser to send a forged HTTP request, including the victim’s session cookie and any other automatically included authentication information, to a vulnerable web application. This allows the attacker to force the victim’s browser to generate requests the vulnerable application thinks are legitimate requests from the victim.</p>
		<li>Using components with known vulnerabilities</li>
			<p>Components, such as libraries, frameworks, and other software modules, almost always run with full privileges. If a vulnerable component is exploited, such an attack can facilitate serious data loss or server takeover. Applications using components with known vulnerabilities may undermine application defenses and enable a range of possible attacks and impacts.</p>
		<li>Unvalidated redirects and forwards</li>
			<p>Web applications frequently redirect and forward users to other pages and websites, and use untrusted data to determine the destination pages. Without proper validation, attackers can redirect victims to phishing or malware sites, or use forwards to access unauthorized pages.</p>
	</ul>
3. How Rails compares to other frameworks on security


####Lesson
Install [Brakeman gem](https://github.com/presidentbeef/brakeman) in one of your existing Rails apps which has a database component. Use Brakeman to find potential security flaws, and fix those that are most serious.


##Multitenancy
Multitenancy is a principle in software architecture where a single instance of the software serves multiple client organizations. A multitenant application generally runs from a single server and is designed to virtually partition its data and configuration between clients. It can be contrasted with a multi-instance architecture where separate software instances (or hardware systems) are set up for different clients.


####Lecture Outline
1. Software as a Service<br>
	Software as a service (SaaS), or on-demand software, is a software delivery model in which software and associated data are centrally hosted on the cloud. SaaS is typically accessed by users using a thin client via a web browser. SaaS has become so common that it has been incorporated ino the strategy of all leading enterprise software companies. SaaS is generally sold via a subscription model, often priced along some usage paramaters (number of customers, per transaction, etc). Popular examples include: Apple iTunes, Amazon Web Services, Evernote, Google Apps, Udacity, and Windows Azure. The vast majority of SaaS solutions are based on multi-tenant architecture where a single version of the application, with a single configuration, is used for all customers ("tenants"). To support scalability, the application is installed on multiple machines.
2. Tenancy Models<br>
	<ul>
		<li>The commons: one app we all share in public (eg: Twitter)</li>
		<li>Me among many: one app we all share with some privacy (eg: Facebook)</li>
		<li>Single tenant: one app, just for me / my company (eg: SugarCRM)</li>
		<li>Multi tenant: it seems like one app, just for me / my company (eg: Zoho)</li>
		<li>Virtualized platform: many app copies and one is just for me / my company (eg: Heroku)</li>
	</ul>
3. Tenancy Considerations<br>
	<ul>
		<li>URL (single, custom)</li>
		<li>Skinning (personalized, customizable, white-label)</li>
		<li>Metadata / LOVs (common, mixed, private)</li>
		<li>Data sharing (public, private)</li>
	</ul>
4. Data separation is vital<br>
	<ul>
		<li>Instance partitioning</li>
		<li>RBAC partitioning</li>
		<li>Model partitioning</li>
		<li>Schema partitioning (probably simplest)</li>
	</ul>
5. Types of User (eg: admin, manager, user)
6. Testing<br>
	It's complicated



####Lesson
The class will together create a very basic forum app, with multi-tenancy in mind. Then, you will make it a multi-tenant app using [Railscasts 388: Multitenancy with Scopes](http://railscasts.com/episodes/388-multitenancy-with-scopes) as a guide.


####Resources:
[Top 25 Most Dangerous Software Errors](http://www.sans.org/top25-software-errors/)<br>
[Rails Guides: Security](http://guides.rubyonrails.org/security.html)<br>
[Securing Your Rails Application video by Bryan Helmkamp](http://vimeo.com/user10782831/review/63766689/c9d79accd1)<br>
[6 Ways to Strengthen Web App Security blog post](http://www.informationweek.com/security/application-security/6-ways-to-strengthen-web-app-security/240006962)<br>
[How to Perform a SQL Injection Attack blog post](http://www.lokisec.com/?p=308)<br>

[Multi-Tenancy in Rails book by Ryan Bigg](https://leanpub.com/multi-tenancy-rails)<br>
[Multitenancy with Rails Slidedeck by Paul Gallagher](http://www.slideshare.net/tardate/multitenancy-with-rails)<br>
[Multitenancy in Rails blog post by David Lesches](http://davidlesches.com/blog/multitenancy-in-rails)<br>
[Simple Multi-Tenancy blog post by Samuel Kadolph](http://samuel.kadolph.com/2010/12/simple-rails-multi-tenancy/)<br>
