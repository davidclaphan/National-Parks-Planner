const express = require('express')
const db = require('./db_config');
const cors = require('cors');
const app = express();

app.use(express.json());
app.use(cors({
    origin: ['http://flip2.engr.oregonstate.edu:9204','http://flip2.engr.oregonstate.edu:9204/homepage','http://flip2.engr.oregonstate.edu:9204/parks_planner']
}));

const PORT = 10726;

const parks = require('./routes/parks');

// Route tree separation code modified from source code found at:
// https://github.com/expressjs/express/tree/master/examples/route-separation

app.get("/parksData", parks.data);
app.get("/parksCol", parks.headers);
app.get("/parksNames", parks.parksNames);
app.get("/hikesData", parks.hikes);
app.get("/hikesData/:ParksSelect", parks.hikesFilter);
app.get("/hikesFiltered", parks.hikesParks);
app.get("/hikesCol", parks.hikesheaders);
app.get("/hikesDiff", parks.hikesDiff);
app.get("/randPark/:result", parks.randPark);
app.get("/hikesOnly/:HikesSelect", parks.hikesOnly)
app.get("/visitorData/:ParksSelect", parks.visitors);


/***************MICROSERVICE***************/
const phrases = [
    "Drink more water!",
    "Get a full 8 hours!",
    "Make sure you eat your vegetables!",
    "30 minutes of exercise a day!",
    "Go for a walk",
    "Put down your phone to limit your screen time!",
    "Make time to relax"
];

function motivationalPhrases(){
    let num = Math.floor(Math.random() * 7);
    return phrases[num];
}

app.get("/motivation", (req, res) => {
    let suggestion = motivationalPhrases();
    res.json(suggestion);
});


app.listen(PORT, ()=> {
    console.log("Connected to backend!")
});
