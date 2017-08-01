1. What are some common HTTP status codes?

Status codes are 3 digit numbers that represent the response to a request.
If the number starts with a 1, it's an informational response, or a provisional response (100 Continue).
If the number starts with a 2, it means it was successful (200 OK).
If the number starts with a 3, it's a redirection response, and that further action is
needed in order to fulfill the request. 301 Moved Permanently means that the requested
site has been assigned a new permanent URI.
Error codes start with 4 and 5. 404 Not Found means the requested URI is not found.
4xx are client errors, and 5xx are server errors.

2. What is the difference between a GET request and a POST request? When might each be used?

GET and POST are two most used HTTP request methods. GET requests data from a specified source,
while POST submits data to be processed to a specified resource.
GET requests are not affected by reloads, while POST will resubmit the data to browser.
GET can be bookmarked and cached, while POST cannot. GET is saved in browser history,
while POST is not. GET is less secure than POST, so do not use GET when sending
sensitive information. GET should only retrieve data and should not have effect
on the data. POST is used to send data to the server, such as file uploads.

3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
