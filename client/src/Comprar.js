import React, { useState, useEffect } from 'react';
import Axios from 'axios';
import './App.css'; // Importa tus estilos CSS

function Comprar() {
    const [serviciosList, setServicios] = useState([]);
    const [selectedServicio, setSelectedServicio] = useState(null);

    useEffect(() => {
        getServicios();
    }, []);

    const getServicios = () => {
        Axios.get("http://localhost:3008/servicio")
            .then((response) => {
                setServicios(response.data);
            })
            .catch((error) => {
                console.error('Error al obtener la lista de servicios:', error);
            });
    }

    const handleServicioSelection = (servicio) => {
        setSelectedServicio(servicio);
    }

    return (
        <>
            <table className="table table-striped">
                <thead>
                    <tr>
                        <th scope="col" className="table-active">Seleccionar</th>
                        <th scope="col" className="table-active">Categoria</th>
                        <th scope="col" className="table-active">Precio</th>
                        <th scope="col" className="table-active">Terminos y condiciones</th>
                        <th scope="col" className="table-active">Nro de personas aseguradas</th>
                    </tr>
                </thead>
                <tbody>
                    {
                    serviciosList.map((val, key) => (
                        <tr key={val.Categoria}>
                            <td><input type="radio" name="servicio" onChange={() => handleServicioSelection(val)} /></td>
                            <th scope="row">{val.Categoria}</th>
                            <td>{val.Precio}</td>
                            <td>{val.Terminos_condiciones}</td>
                            <td>{val.Nro_personas_aseguradas}</td>
                        </tr>
                    ))
                    }
                </tbody>
            </table>
            <button onClick={() => console.log("Servicio seleccionado:", selectedServicio)}>Confirmar selección</button>
        </>
    );
}

export default Comprar;
