// HEADER
'use strict';

const PORT = 3000;

const phrases = require('./micro.js').phrases;

const express = require("express");
const app = express();

app.use(express.urlencoded({
    extended: true
}));

app.use(express.static('public'));

// functions

function motivationalPhrases(){
    let num = Math.floor(Math.random() * 7);
    return phrases[num];
}

app.get("/motivation", (req, res) => {
    let suggestion = motivationalPhrases();
    res.json(suggestion);
});


app.listen(PORT, () => {
    console.log(`Server listening on port ${PORT}...`);
});

