const express = require("express");
const app = express();
const mysql = require("mysql");

const cors = require("cors");
app.use(cors());
app.use(express.json());

const db = mysql.createConnection({ 
    host: "localhost", 
    user: "root",
    password: "Promundial1?", 
    database: "venta_seguros"
});

app.post("/signup", (req, res) => {
    const usuario = req.body.usuario;
    const pasword = req.body.password;
    const dni = req.body.dni;
    const nombre = req.body.nombre;
    const apelli_pat = req.body.apelli_pat;
    const apelli_mat = req.body.apelli_mat;
    const fecha_nac = req.body.fecha_nac;
    const genero = req.body.genero;
    const nacionalidad = req.body.nacionalidad;
    const email = req.body.email;
    const direccion = req.body.direccion;
    const telefono = req.body.telefono;
    
    db.query('CALL AgregarCliente(?,?,?,?,?,?,?,?,?,?,?,?) ',
        [usuario, pasword, dni, nombre, apelli_pat, apelli_mat, fecha_nac, genero, nacionalidad, email, direccion, telefono,], (err, data) => {
            if (err) {
                console.log(err);
                res.status(500).send("Error al procesar la solicitud");
            } else {
                const mensaje = data[0][0].Resultado;
                return res.json(mensaje);
            }
        }
    );
});


app.post("/login", (req, res) => {
    const usuario = req.body.usuario;
    const password = req.body.password;
   
    const sql = "SELECT * FROM usuario WHERE Usuario_ID = ? AND pasword = ?;";
    db.query(sql, [usuario, password], (err, data) => {
        if (err) {
            console.log(err);
            res.status(500).send("Error al procesar la solicitud");
        } else {
            if (data.length > 0) {
                return res.json("Iniciaste sesión con éxito!");
            } else {
                return res.json("Usuario o contraseña incorrectos");
            }
        }
    });
});

app.get("/servicio", (req, res) => {
    db.query("SELECT * FROM seguro_poliza",
    (err,result)=>{
        if(err){
            console.log(err);
        }
        else{
            res.send(result);
        }
    });
});


app.listen(3008,()=>{
    console.log("Corriendo en el puerto 3008")
});