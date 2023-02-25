const mysql = require('mysql')
const db = mysql.createConnection({
    connectionLimit : 10,
    host: 'classmysql.engr.oregonstate.edu',
    user: 'cs361_claphand',
    password: '6780',
    database: 'cs361_claphand'
});

module.exports = db;