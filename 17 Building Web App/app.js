import express from 'express';
import mysql from 'mysql';
import bodyParser from 'body-parser';

// EXPRESS SERVER
let app = express()
app.listen(8070, () => {
    console.log('Server running on 8070');
})

// MYSQL CONNECTION
let connection = mysql.createConnection({
    host        :   'localhost',
    user        :   'sqluser',
    password    :   'password',
    database    :   'node_proj'
})

// EJS CONNECTION
app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({extended: true}));

// HOME PAGE
let count = 0;
app.get('/', (req, res) =>{
    // Find count of users in DB
    let query = `SELECT COUNT(*) AS count FROM users`
    connection.query(query, (err, res) => {
        if(err) throw err
        count = res[0].count;
            
        // Respond with that count
    })
    res.render('home', {count: count})
})

// REGISTER PAGE
app.post('/register', function(req,res){
    var person = {email: req.body.email};
    connection.query('INSERT INTO users SET ?', person, function(err, result) {
        console.log(err);
        console.log(result);
        res.redirect("/");
    });
});