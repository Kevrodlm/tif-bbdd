const express = require("express");
const app = express();
const mysql = require("mysql");

const cors = require("cors");
app.use(cors());
app.use(express.json());

const db = mysql.createConnection({ 
    host: "localhost", 
    user: "root",
    password: "password", 
    database: "venta_seguros"
});

app.post("/signup", (req, res) => {
    const dni = req.body.dni;
    const nombre = req.body.nombre;
    const apelli_pat = req.body.apelli_pat;
    const apelli_mat = req.body.apelli_mat;
    const telefono = req.body.telefono;
    const fecha_nac = req.body.fecha_nac;
    const nacionalidad = req.body.nacionalidad;
    const genero = req.body.genero;
    const email = req.body.email;
    const usuario = req.body.usuario;
    const pasword = req.body.password;
    db.query('INSERT INTO USUARIO(dni,nombre,apellidoP,apellidoM,fecha_nac,telefono,genero,nacionalidad,email,contrasena) VALUES(?,?,?,?,?,?,?,?,?,?)',
        [dni, nombre, apelli_pat, apelli_mat, fecha_nac, telefono, genero, nacionalidad, email, usuario, pasword], (err, data) => {
            if (err) {
                console.log(err);
                res.status(500).send("Error al procesar la solicitud");
            } else {
                res.status(200).send("Te registraste con éxito!");
            }
            return res.json(data); 
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

app.listen(3008,()=>{
    console.log("Corriendo en el puerto 3008")
});