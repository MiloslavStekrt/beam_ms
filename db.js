const mysql = require("mysql");

const db = (sql) => {
    var con = mysql.createConnection({
        host: "localhost",
        user: "beam-node",
        password: "ZLZk!u9@wb5eszm",
        database: 'beam-ms'
    });
    con.connect((err) => {
        if (err) throw err;
        con.query(sql, (err, result) => {
            if (err) throw err;
            return(result)
        });
    }); 
    con.destroy();
}
