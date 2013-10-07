## Beginning Rails

Rails is much more complex than Sinatra, but very similar in it's application. Rails allows for a much easier framework to expand an application to many uses and scopes. The rails stack can be a very difficult thing to wrap your mind around. The most basic way to put it is that the application receives an HTTP request (when you type a url in the browser or click a link), the application takes the request and using several "layers", processes the request, and sends an HTTP response to the browser. The diagram below is a rough representation of how a request is handled. As we go through the next section refer to this diagram for a visual representation


![Rails Stack Diagram](../../images/rails-stack.png)

### The Browser
**(1)** Web browsers send and receive HTTP requests to the internet. An HTTP request includes a URL (or web address), URL's contain a host ('example.com') and an optional path ('/users'). When the browser sends a request to the internet, the host is used to determine the server requested. This process lives outside of our rails app. Once our server is found our application receives the request, our application mainly cares about the path ("/users") and the request method ("GET"), we'll ignore the method for now. 

### Routes
**(2)** Now our application has received the request with the path "/users", our app starts with the routing process. Routing matches the path of the URL, to determine what to do with the request. The routes are handled in the file that lives at `/config/routes.rb`

    Some::Application.routes.draw do
      get "/users" => "users#index"
    end
    
**(3)** In this very simple example we have one route defined, the one that handles our example request. The `Some::Application.routes.draw do` and `end` are something that our rails app will automatically generate, the code we will write will go in between them. The route we have defined `get "/users" => "users#index"` tells our application to route the path `"/users"` to the `"users#index"`, this is kind of a cryptic syntax, think of the `#` as a seperator. the text before the `#` is the controller, the text after the `#` is the method (also called an action) within the controller. So in this case `"users#index"` routes to the `index` method within the `UsersController`.

### Controller
**(4)** So our application has determined that the request is routed to the `index` action of the `UsersController`. Controllers live in the `/app/controllers` directory and are named the same as the controller name `users_controller.rb`. A simple controller to handle our example would look like:

    class UsersController
    
      def index
        @user = User.new(name: "Ada Lovelace", birthday: "Dec 10, 1815")
      end
      
    end
    

**(5)** The controller's function is to assign any needed data to instance variables and send them to the view. Within the controller method we will use the `User` model to fetch data from the database and control any logic that needs to happen to the data. We should not be putting logic (algorithms) in the controller.

### Models
Models are ruby classes to represent any Object we'd like to represent in our web application, typically ruby models fetch data from a SQL database. Our `User` model:

    class User < ActiveRecord::Base
      def age
        Date.today.year - self.birthday.year
      end
    end

Our controller has assigned a `User` object to the variable `@user` for our views use.

### Views 
**(6)** After the method in the controller has executed, rails assumes that we want to render the HTML view matching our method. The HTML file to be used will be found by the controller and method names. In this example the file would be found in `/app/views/users/index.html.erb`. All views are in the `/app/views` directory, and `/users/index` is based on the controller name and method name. `.html.erb` is the file extension. `.html` is obviously telling the view that it contains HTML, and the `.erb` extension is a ruby extension that takes a format (HTML) and allows ruby to be interpolated within it. So ruby will evaluate the file, run any needed ruby code, and return HTML with the ruby values within it.

    <p>
      Hello World!<br>
      <%= @user.name %> is <%= @user.age %> years old.
    </p>
    
Ruby will execute this file and return the HTML

    <p>
      Hello World!<br>
      Ada Lovelace is 168 years old.
    </p>

**(7)** Our application will then take the HTML and return it with an HTTP response to our web browser.

That is one full request to a rails app. Keep in mind that this is the most basic scenarios we could find. The Rails stack can get much more complicated. Some more complex scenarios that we will certainly come across very soon are:

1. Handling errors
2. HTTP methods other than GET
3. Returning data other than HTML
4. Running code before EVERY request