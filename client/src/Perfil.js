import './App.css';
import React, { useState, useEffect } from 'react';
import Axios from "axios";
import 'bootstrap/dist/css/bootstrap.min.css';

function Perfil() {
    const [datosList, setDatos] = useState([]);
    const [error, setError] = useState(null);

    useEffect(() => {
        const fetchDatos = async () => {
            try {
                const response = await Axios.get("http://localhost:3008/perfil");
                console.log("Respuesta del servidor:", response);
                if (response.data.length > 0) {
                    setDatos(response.data[0]);
                } else {
                    setError('No se encontraron datos.');
                }
            } catch (error) {
                console.error('Error al obtener los datos:', error);
                setError('Hubo un error al obtener los datos del perfil.');
            }
        };
        
        fetchDatos();
    }, []);

    return(
        <div>
            {error && <div>{error}</div>}
            {datosList && datosList.map((datos, index) => (
                <div key={index}>
                    <h2>Perfil</h2>
                    <p>Nombre: {datos.Nombre}</p>
                    <p>Apellidos: {datos.ApellidoP} {datos.ApellidoM}</p>
                    <p>DNI: {datos.DNI}</p>
                    <p>Email: {datos.Email}</p>
                    <p>Fecha de nacimiento: {datos.Fecha_nacimiento}</p>
                    <p>Género: {datos.Genero}</p>
                    <p>Nacionalidad: {datos.Nacionalidad}</p>
                    <p>Teléfono: {datos.Telefono}</p>
                    <p>Dirección: {datos.direccion}</p>
                </div>
            ))}
        </div>
    );
}

export default Perfil;



