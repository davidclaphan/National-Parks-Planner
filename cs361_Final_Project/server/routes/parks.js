const db = require('../db_config')

exports.data = (req, res) => {
    const parksSelect = 
    `SELECT * FROM Parks ORDER BY NAME ASC;`
    ;
    db.query(parksSelect, (err, result) => {
        if(err) {return result.json(err)}
        return res.json(result)
    });
}

exports.headers = (req, res) => {
    const parksDesc = 'Describe Parks';
    db.query(parksDesc, (err, result) => {
        if(err) {return result.json(err)}
        return res.json(result)
    });
}

exports.parksNames = (req, res) => {
    const parksNames = 
    `SELECT NAME FROM Parks ORDER BY NAME ASC;`
    ;
    db.query(parksNames, (err, result) => {
        if(err) {return result.json(err)}
        return res.json(result)
    });
}

exports.randPark = (req, res) => {
    const num = req.params.result
    const randPark = 
    `SELECT NAME FROM Parks Where id=?;`
    ;
    db.query(randPark, [num], (err, result) => {
        if(err) {return result.json(err)}
        return res.json(result)
    });
}

exports.visitors = (req, res) => {
    const parksName = req.params.ParksSelect
    const visitorSelect = 
    `SELECT month, FORMAT(visitors, 0) as visitors FROM visitors WHERE ParkName = ? ORDER BY monthNum ASC;`
    ;
    db.query(visitorSelect, [parksName], (err, result) => {
        if(err) {return result.json(err)}
        return res.json(result)
    });
}

exports.hikes = (req, res) => {
    const hikesSelect = 
    `SELECT location, NAME, difficulty, distance, elevation, type, link FROM Hikes;`
    ;
    db.query(hikesSelect, (err, result) => {
        if(err) {return result.json(err)}
        return res.json(result)
    });
}

exports.hikesOnly = (req, res) => {
    const hikeName = req.params.HikesSelect
    const hikesFilter = 
    `SELECT location, NAME, difficulty, distance, elevation, type, link FROM Hikes WHERE difficulty = ?;`
    ;
    db.query(hikesFilter, [hikeName], (err, result) => { 
        if(err) {return result.json(err)}
        return res.json(result) 
    });
}

exports.hikesFilter = (req, res) => {
    const parksName = req.params.ParksSelect
    const hikesSelectFilter = 
    `SELECT location, NAME, difficulty, distance, elevation, type, link FROM Hikes WHERE ParkName = ?;`
    ;
    db.query(hikesSelectFilter, [parksName], (err, result) => {
        if(err) {return result.json(err)}
        return res.json(result)
    });
}

exports.hikesParks = (req, res) => {
    const park = req.query.park; 
    const diff = req.query.diff;
    const hikesParks = 
    `SELECT location, NAME, difficulty, distance, elevation, type, link FROM Hikes WHERE ParkName = ? AND difficulty = ?;`
    ;
    db.query(hikesParks, [park, diff], (err, result) => {
        if(err) {return result.json(err)}
        return res.json(result)
    });
}

exports.hikesheaders = (req, res) => {
    const hikesDesc = 
    `Describe Hikes;`
    ;
    db.query(hikesDesc, (err, result) => {
        if(err) {return result.json(err)}
        return res.json(result)
    });
}

exports.hikesDiff = (req, res) => {
    const hikesDiff = 
    `SELECT DISTINCT difficulty FROM Hikes ORDER BY CASE difficulty WHEN "Easy" THEN 1 WHEN "Moderate" THEN 2 WHEN "Hard" THEN 3 END ASC;`
    ;
    db.query(hikesDiff, (err, result) => {
        if(err) {return result.json(err)}
        return res.json(result)
    });
}