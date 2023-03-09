cs361-course-project-dclaphan

# Project Overview

This project is a simple web application called "National Parks Trip Planner" that helps a user plan their next trip to a U.S. National Park. The user can select an option from the dropdown or use the "random" feature, a microservice integration with my class partner's project. Depending on the selection, multiple components update and provide 2022 park visitor data in a toggleable table, and pre-selected hiking options that can be filtered by difficulty (Easy, Moderate, Hard). The "info" buttons in the last table column of the **Recommended Hiking** section will rerouted the user to the AllTrails page for that hike.

Part of this project also involved creating a microservice for my class partner's project. Details about the microservice I created can be found at the bottom of this README.

**Front-end:** React<br>
**Back-end:** Node.js / Express / SQL database <br><br>
Hiking data was taken from [AllTrails](https://www.alltrails.com/) and park visitor data was taken from [nps.gov](https://irma.nps.gov/Stats/SSRSReports/Park%20Specific%20Reports/Recreation%20Visitors%20By%20Month%20(1979%20-%20Last%20Calendar%20Year)?Park=GRTE)

![image](https://user-images.githubusercontent.com/97066227/221384132-29ebafd7-fdbd-409c-9278-ad700b0d8991.png)


### This project is hosted on Oregon State University flip2 server

# Microservice Implementation

## REQUEST
 Microservice can be REQUESTED by sending a GET request to ('http://flip2.engr.oregonstate.edu:10726/motivation')
   The data that would be requested is hosted in an array, the GET request will call a function that randomly generates a number (index position in array)
   and returns the value at that position.
 
Example:
<br>app.get('http://flip2.engr.oregonstate.edu:10726/motivation', (req, res) => {
<br>&nbsp;&nbsp;&nbsp;&nbsp;const suggestion = req.json()
<br>&nbsp;&nbsp;&nbsp;&nbsp;console.log(suggestion)
<br>};

## RECEIVE
 The data RECEIVED by the microservice will be a single string in JSON format 
 
<img width="380" alt="image" src="https://user-images.githubusercontent.com/97066227/218354993-71d8b64a-b23a-4896-8d40-90f70e52a5e1.png">
