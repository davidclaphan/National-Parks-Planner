cs361-course-project-dclaphan

### This project is hosted on Oregon State University flip server

## REQUEST
 Microservice can be REQUESTED by sending a GET request to ('http://flip2.engr.oregonstate.edu:{PORT}/motivation')
   The data that would be requested is hosted in an array, the GET request will call a function that randomly generates a number (index position in array)
   and returns the value at that position.
 
Example:
<br>app.get('http://flip2.engr.oregonstate.edu:{PORT}/motivation', (req, res) => {
<br>&nbsp;&nbsp;&nbsp;&nbsp;const suggestion = req.json()
<br>&nbsp;&nbsp;&nbsp;&nbsp;console.log(suggestion)
   };

## RECEIVE
 The data RECEIVED by the microservice will be a single string in JSON format 
 
<img width="380" alt="image" src="https://user-images.githubusercontent.com/97066227/218354993-71d8b64a-b23a-4896-8d40-90f70e52a5e1.png">
