TODO: consuming APIs, advanced forms

# Week Seven

## Consuming Web API's
API's (Application Programming Interface) are the languages that software uses. When we use Classes and Methods in Ruby, we are using Ruby's API. We can write an API for web applications, which would allow for people and other software to use the resources within our application. There are many uses for web api's, a common one would be iPhone apps, the native iphone app will use a web API to get, create, modify, and delete resources in a web application. The Twitter app would be a very common instance of this.

### Structure
A good Web API will be structured in a RESTful way. Meaning that it's focused around resources, which fits perfectly with Rails and object oriented programming. Web API's act in the same way as a standard request from our browser, but typically for ease of consumption the response is in a standard data format other than HTML, such as XML or JSON. A common set of API endpoints for a given resource (users in this case) might look something like

- GET /users (gets a collection of users)
- GET /users/1 (gets a single user)
- POST /users (creates a user)
- PUT /users/1 (modifies an existing user)
- DELETE /users/1 (deletes an existing user)


### Data format
The response of a web API can be in many formats but we will focus on JSON. JSON looks very much like a Ruby Hash, so it's quite easy and familiar. The data returned from an API can be in any format and many application structure the data in different ways. In the example above here is what the responses might look like

#### GET /users

    {
      users : [
        {id : 1},
        {id : 2}
      ]
    }
The data returned is pretty simple. As described in our documentation, we can see that the root of the data is a JSON Hash, that contains a key `users`, and a value which is an `Array`. The `Array` contains two resources. Given these resources we could now make a GET request for a specific resource.
#### GET /users/1

    {
      user : {id : 1, name: "Ada Lovelace", age: 184, created_at: "Jan 1 2013"}
    }
    
Some API responses may just be HTTP status codes, for example if we are using the `POST /users` method, since it's a user we are creating we will already know of the attributes, we most likely only care if the request was successful (200) or not (500).

### Documentation

An API should have public documentation outlining the available resources, required and optional parameters, and how to handle the response. Learning how to properly read the documentation for any API is the first step to successfully using it. Here is an example document for our fake API we used above:

#### Resource GET /users
- Returns a list of user resource objects with a root key of "users". A maximum of 20 results will be returned ordered by the most recently created. 
- ***Required Parameters***: -
- ***Optional Parameters***: *page* (must be an integer greater than 0). 
- ***Resource Attributes***: Each resource will contain the attributes: [`id`]


#### Resource GET /users/:id
- Returns a single user resource with a root key of "user".
- ***Required Parameters***: `id` must be included in the URL, must be an attribute matching a existing resource.
- ***Optional Parameters***: -
- ***Resource Attributes***: The resource will contain the attributes: [`id, created_at, name, age`]

### HTTP Libraries
Ruby has a few libraries to help us with external HTTP requests. The standard library included with Ruby is `Net/HTTP`, but we will look at a more simple library [HTTParty](https://github.com/jnunemaker/httparty "HTTParty"). HTTParty would be a good option for consuming a simple weather API [openweathermap.org](http://openweathermap.org/wiki/API/2.1/JSON_API#Find_City_via_name).

    require 'httparty'
    require 'json'
    
    response = HTTParty.get("http://api.openweathermap.org/data/2.1/find/name?q=seattle")
    response.success # => true
    response.code    # => 200
    weather_data = JSON.parse(response.body)
    weather_data["list"].first["weather"].first["description"] # => "Sky is Clear"
    
The raw JSON returned from the request is:

    {
      "message":"",
      "cod":"200",
      "type":"base",
      "calctime":"",
      "units":"internal",
      "count":1,
      "list":[
        {"id":5809844,
        "coord":{"lat":47.606209,"lon":-122.332069},
        "name":"Seattle",
        "main":{
          "temp":296.43,"pressure":1017,"humidity":49,"temp_min":294.15,"temp_max":298.71
        },
        "dt":1371936039,
        "date":"2013-06-22 21:20:39",
        "wind": {"speed":2.1,"deg":40},
        "clouds":{"all":1},
        "weather":[{"id":800,"main":"Clear","description":"Sky is Clear","icon":"01d"}],
        "sys":
          {"country":"US","population":608660},
          "url":"http:\/\/openweathermap.org\/city\/5809844"}
        ]
      }
      
### Gems
Many Gems exist to utilize specific public and private API's, often called "wrappers". For example the [Twitter](https://github.com/sferik/twitter) gem to make consuming Twitter's API as easy as `Twitter.home_timeline`. Most likely if there is a service that you'd like to consume, a gem already exists for it.

## Advanced Forms