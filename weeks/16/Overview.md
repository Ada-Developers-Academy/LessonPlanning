#Weeks 16-17: Polling, Live Events

##Polling
Polling is a technique used by the vast majority of AJAX applications. The app repeatedly polls a server for data, like new comments on an article. The client makes a request and waits for the server to respond with data. If none is available, an empty response is returned. This is also commonly done via pushing changes to the client via a socket, but polling is good for when you don't need instant feedback and don't need to send any data from the client to the server.



##Live Events
Server-sent events allow you to trigger events on the browser from a persistent connection to the server. This requires Rails stream data which can be done through ActionController::Live, a feature in Rails 4. This feature is supported in all modern browsers except IE, though a third party library is available to add IE support.



###Resources:
[Railscasts 229: Polling for Changes, Revised](http://railscasts.com/episodes/229-polling-for-changes-revised)<br>
[Railscasts 401: ActionController::Live](http://railscasts.com/episodes/401-actioncontroller-live?view=asciicast)<br>
[Is it Live?](http://tenderlovemaking.com/2012/07/30/is-it-live.html)<br>
[Rails 4 Server Send Events with ActionController::Live and PostgreSQL](http://ngauthier.com/2013/02/rails-4-sse-notify-listen.html)<br>
[Server-Sent Events in HTML 5](http://www.html5rocks.com/en/tutorials/eventsource/basics/)<br>