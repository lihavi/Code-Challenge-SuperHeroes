## Superhero Powers API

This API manages superhero powers. A power can have a name and a description. The API supports CRUD operations (Create, Read, Update, Delete) for powers.

## Getting Started
To get started,clone this repository to your local machine and run:

 bundle install

rails db:migrate

rails db:seed

rails s


## API Endpoints
The following API endpoints are available:

## GET /heroes
Returns a JSON array of all heroes in the database, in the following format:
```
[  

{ "id": 1, "name": "Kamala Khan", "super_name": "Ms. Marvel" },  

{ "id": 2, "name": "Doreen Green", "super_name": "Squirrel Girl" },  

{ "id": 3, "name": "Gwen Stacy", "super_name": "Spider-Gwen" }

]

## GET /heroes/:id

Returns a JSON object with information about a specific hero, including their associated powers, in the following format:

 {
  "id": 1,
  "name": "Superman",
  "super_name": "Clark Kent",
  "powers": [
    {
      "id": 1,
      "name": "Super Strength",
      "description": "Gives the wielder super-human strength."
    },
    {
      "id": 2,
      "name": "Flight",
      "description": "Gives the wielder the ability to fly through the skies at supersonic speed."
    },
  ]
}

## GET /powers 

Returns a JSON array of all powers in the database, in the following format:
``
[
  {
    "id": 1,
    "name": "super strength",
    "description": "gives the wielder super-human strengths"
  },
  {
    "id": 1,
    "name": "flight",
    "description": "gives the wielder the ability to fly through the skies at supersonic speed"
  }
]

 ##  POST /hero_powers
Returns a JSON object with information about a specific power, in the following format:
``
[
{
  "id": 1,
  "name": "super strength",
  "description": "gives the wielder super-human strengths"
}
]

##  PATCH /powers/:id
This route should update an existing `Power`

If the `Power` exists and is updated successfully (passes validations), update
its description and return JSON data in the format below:
```
[
{
  "id": 1,
  "name": "super strength",
  "description": "Updated description"
}

]

 ## POST /hero_powers
Creates a new hero power (a join between a hero and a power) in the database. Expects a JSON object with the following properties in the request body:

{
  "strength": "Average",
  "power_id": 1,
  "hero_id": 3
}




