## MVC
MVC (Model, View, Controller) is a common software architecture pattern that helps us separate many of the concerns of an application to avoid complexity. Rails is an implementation of the MVC pattern. Here's a quick overview:

- Model : Represents the data in your application. For example, our application has users; the model is where we define methods and attributes that relate to using and manipulating the users data.
- Controller : The controller sends and receives commands from the view to modify or retrieve the model data.
- View : The view is what the user sees and interacts with. Model data is routed from the controller for the user to see. Through forms and hyperlinks the user can send requests to the controller to update or make additional requests.

For more information on MVC and its history, try the [Wikipedia Article](http://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller)
