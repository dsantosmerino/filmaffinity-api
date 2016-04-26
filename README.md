# Unofficial filmaffinity API

## RESTful API
This RESTful API provides programmatic access to read data from Filmaffinity.com in english or spanish using [filmaffinity ruby gem](https://rubygems.org/gems/filmaffinity).

## Features
 - **GET** ```/top```
 Returns an array with Top 30 movies, just including ```id``` and ```title```

 - **GET** ```/search?q=query```
 Returns an array with movies that includes your query in the movie title, just including ```id``` and ```title```

 - **GET** ```/movie/:id```
 Returns an object that contains full movie data

## Feedback and contribution
If you find any issues with the API or you want to contribute, please use this github repository.
