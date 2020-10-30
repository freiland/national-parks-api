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
