var mysql = require('mysql');

var con = mysql.createConnection({
  host: "35.240.248.249",
  user: "kumparanGuest",
  password: "guestForKumparan",
  database: "20190422_Almira_Khonsa_Izzaty"
});

con.connect(function (err){
    if(err) throw err;
});

module.exports = con;