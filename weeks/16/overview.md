#Weeks 16-17 - Polling, Live Events

##Polling
Polling is used to check in with the server for new data, like new comments on an article page. This is more commonly done via pushing changes to the client via a socket, but polling is good for when you don't need instant feedback.



##Live Events
Server-sent events allow you to trigger events on the browser from a persistent connection to the server. This requires Rails stream data which can be done through ActionController::Live, a feature in Rails 4.



###Resources:
[Railscasts 229: Polling for Changes, Revised](http://railscasts.com/episodes/229-polling-for-changes-revised)
[Railscasts 401: ActionController::Live](http://railscasts.com/episodes/401-actioncontroller-live?view=asciicast)
[Is it Live?](http://tenderlovemaking.com/2012/07/30/is-it-live.html)
[Rails 4 Server Send Events with ActionController::Live and PostgreSQL](http://ngauthier.com/2013/02/rails-4-sse-notify-listen.html)
