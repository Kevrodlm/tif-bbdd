import './App.css';
import React, { useState, useEffect } from 'react';
import Axios from "axios";
import 'bootstrap/dist/css/bootstrap.min.css';

function Perfil() {
    const [datosList, setDatos] = useState([]);
    const [contratoList, setContratos] = useState([]);
    const [accidentesList, setAccidentes] = useState([]);
    const [reclamosList, setReclamos] = useState([]);
    const [error, setError] = useState(null);

    useEffect(() => {
        const fetchDatos = async () => {
            try {
                const response = await Axios.get("http://localhost:3008/datosUsuario");
                console.log("Respuesta del servidor (datos):", response);
                if (response.data.length > 0) {
                    setDatos(response.data[0]);
                } else {
                    setError('No se encontraron datos de usuario.');
                }
            } catch (error) {
                console.error('Error al obtener los datos de usuario:', error);
                setError('Hubo un error al obtener los datos del perfil.');
            }
        };

        const fetchContratos = async () => {
            try {
                const response = await Axios.get("http://localhost:3008/datosUsuario");
                console.log("Respuesta del servidor (contratos):", response);
                if (response.data.length > 0) {
                    setContratos(response.data[0]);
                } else {
                    setError('No se encontraron datos de contratos.');
                }
            } catch (error) {
                console.error('Error al obtener los datos de contratos:', error);
                setError('Hubo un error al obtener los datos del contrato.');
            }
        };

        const fetchAccidentes = async () => {
            try {
                const response = await Axios.get("http://localhost:3008/datosUsuario");
                console.log("Respuesta del servidor (accidentes):", response);
                if (response.data.length > 0) {
                    setAccidentes(response.data[0]);
                } else {
                    setError('No se encontraron datos de usuario.');
                }
            } catch (error) {
                console.error('Error al obtener los datos de usuario:', error);
                setError('Hubo un error al obtener los datos del perfil.');
            }
        };

        const fetchReclamos = async () => {
            try {
                const response = await Axios.get("http://localhost:3008/datosUsuario");
                console.log("Respuesta del servidor (reclamos):", response);
                if (response.data.length > 0) {
                    setReclamos(response.data[0]);
                } else {
                    setError('No se encontraron datos de usuario.');
                }
            } catch (error) {
                console.error('Error al obtener los datos de usuario:', error);
                setError('Hubo un error al obtener los datos del perfil.');
            }
        };

        fetchDatos();
        fetchContratos();
        fetchAccidentes();
        fetchReclamos();
    }, []);

    return (
        <div>
            <div>
            {error && <div>{error.datos}</div>}
                {datosList.map((datos, index) => (
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
            <div>
                {error && <div>{error.contratos}</div>}
                {contratoList && contratoList.map((datos, index) => (
                    <div key={index}>
                        <h2>Contratos</h2>
                        <p>Categoria: {datos.Categoria}</p>
                        <p>Monto: {datos.Monto}</p>
                        <p>Inicio: {datos.Inicio}</p>
                    </div>
                ))}
            </div>
            
            <div>
                {error && <div>{error.accidentes}</div>}
                {accidentesList && accidentesList.map((datos, index) => (
                    <div key={index}>
                        <h2>Accidentes</h2>
                        <p>Registro: {datos.Categoria}</p>
                        <p>Fecha: {datos.Monto}</p>
                        <p>Hora: {datos.Inicio}</p>
                    </div>
                ))}
            </div>
            <div>
                {error && <div>{error.reclamos}</div>}
                {reclamosList && reclamosList.map((datos, index) => (
                    <div key={index}>
                        <h2>Reclamos</h2>
                        <p>Reclamo: {datos.Categoria}</p>
                        <p>Fecha: {datos.Monto}</p>
                        <p>Hora: {datos.Inicio}</p>
                    </div>
                ))}
            </div>
        </div>
    );    
    
}

export default Perfil;



