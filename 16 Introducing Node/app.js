

/* CONNECTION MYSQL */
import mysql  from 'mysql'
import { faker } from '@faker-js/faker';
let con = mysql.createConnection({
    host: "localhost",
    database: "node_proj",
    user: "sqluser",
    password: "password"
});

con.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
});


const query = `
INSERT INTO users (email, created_at) VALUES ?
`

/* let data = [];
for (let i = 0; i < 500; i++) {
    data.push([
        faker.internet.email(),
        faker.date.past()
    ])
    
}
 */console.log(data);

con.query(query, [data], (error, result) => {
    console.log(error);
    console.log(result);
})




