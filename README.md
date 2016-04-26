# Unofficial filmaffinity API

## RESTful API
This RESTful API provides programmatic access to read data from Filmaffinity.com in english or spanish using [filmaffinity ruby gem](https://rubygems.org/gems/filmaffinity).

## Features
 - **GET** ```/api/top?lang=LANGUAGE```
 Returns an array with Top 30 movies, just including ```id``` and ```title```

 - **GET** ```/api/search?q=query&lang=LANGUAGE```
 Returns an array with movies that includes your query in the movie title, just including ```id``` and ```title```

 - **GET** ```/api/movie/:id?lang=LANGUAGE&imgur_id=YOUR_CLIENT_ID```
 Returns an object that contains full movie data

## Options
 - LANGUAGE: ```"EN"``` or ```"ES"```
 - YOUR_CLIENT_ID: ```"Your_Imgur_API_client_ID"``` (Delete the imgur_id query or assign it a "nil" value to get a filmaffinity url on movie-poster request).
 
## Feedback and contribution
If you find any issues with the API or you want to contribute, please use this github repository.
