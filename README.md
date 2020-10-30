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
| PUT | /parks/{park_id}{name, state}  | Edit a specific national parl | http://localhost:3000/parks/15?name=Grand Canyon | 200: OK | {
    "message": "Park details have been updated successfully."
} | - | - |