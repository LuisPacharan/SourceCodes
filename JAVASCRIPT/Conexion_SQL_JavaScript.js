
//LIBRERIAS//
const sql = require("mssql");

//********* MODULO DE CONEXION MICROSOFT SQL SERVER *********//
const config = {

    user: 'usuario',
    password: 'password',
    server: 'nombre\\servidor', // o DIRECCION IP
    database: 'Nombre_base_detos', 
    Options:{
        trustedconnection:false,
        enableArithAbort : true,
        encrypt :true,
        trustServerCertificate: true
            }
                };
sql.on('error',err => {
    console.log(err.message)
})
//////////////////////////////////////////////////////////////////

async function getDB() {
    try {
        let pool = await sql.connect(config);
        let result = await pool.request().query("select * from Customers");
        console.log(result);
        sql.close();
    } catch(error){
console.log(error.message);
sql.close();
    }
}

getDB();
