# _National Parks API_

_30 October 2020_

#### _API for National Parks_

#### By _**Forrest Reiland**_

## Description

_This API stores data for national parks name and the state where they are located. It has a custome search route where a park may be called by name. the endpoints and associated routes can be found below._

## API Call Documentation

| Request | Path | Description | Request URL | Response Header | Response Body Example | Error Header | Error Response Body |
| ------- | ---- | ----------- | ----------- |---------------- | --------------------- | ------------ | ------------------- |
| GET | /parks | return all parks in the API | http://localhost:3000/parks | 200: OK | { "id":1, "name": "Zion National Park", "state":"Utah"}| - | - |
| GET | /parks/:id | return a national park by ID | http://localhost:3000/parks/10 | 200: OK | { "id":10, "name": "Yosemite National Park", "state":"California"}| 404: not_found | { "message": "couldn't find park with 'id' = 10"}
| POST | /parks{name, state} | post a park to the API | http://localhost:3000/parks?name="Grand Canyon"&state="Arizona" | 201: created | {"id" = 11, "name" = "Grand Canyon", "state" = "Arizona" } | 422: Unprocessable Entity | { "message": "Validation failed: Name can't be blank, State can't be blank } |
| PUT | /parks/{park_id}{name, state}  | Edit a specific national parl | http://localhost:3000/parks/15?name=Grand Canyon | 200: OK | { "message" : "park details have been updated sucessfully" } | - | - |
| DELETE | /parks/{park_id} | Delete a specific park | http://localhost:3000/parks/1000 | 200: OK | { "message": "delete sucsessful" } | 404: Not found | { "message": "Couldn't find park with 'id'=1000" } |
| GET | /park/?{name} | return a park matching a search parameter | http://localhost:3000/parks/?name=Yosemite | 200: OK | { "id": 6, "name": "Yosemite National Park", "state":"California"} | - | - |

## Setup/Installation Requirements

#### Install Rails
* Download Ruby [here](https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/ruby-installation-and-setup).
* Run the command `gem install rails -v 5.2.0` to install Rails onto your computer. 

#### Clone Repo and Install Bundler
* Navigate to the directory where you would like to store this repository.
* Run `git clone` command in terminal/command line with this repositorys URL included.
* Run `gem install bundler` to install Bundler to manage all gems for this repository.
* Run `bundle` or `bundle install` in your command line to download all dependencies.

#### Set Up Database

* Run `rake db:create` in the terminal. This creates a dev and test database.
* Run `rake db:schema:load` 
* Run `rake db:seed` to run the seed.rb file for the database.

#### Open in Text Editor
* Open the reposiroty in any text editor (This project was built using VS Code).
* Run `rspec` in your command line to run test specifications. 
* Running the server: Run `rails s` in the terminal. This will start a server, which you can access by entering `localhost:3000` in your browser.

## Further Exploration

This app uses the gem 'will_paginate' to paginate results from an API call. Instead of all results matching the call being displayed at once to user, pagination displays a specified number of results. For this exercise, I have the pagination returning 5 results.

To view the paginated results navigate to localhost:3000/paginate.





## Technologies Used

* Ruby
* Rails
* Postgres/psql

### License

Copyright (c) 2020 _Forrest Reiland_

This software is licensed under the MIT license.

    
