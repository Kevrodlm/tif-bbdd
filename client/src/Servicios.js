import './App.css';
import { useState, useEffect} from 'react';
import Axios from "axios";
import 'bootstrap/dist/css/bootstrap.min.css';


const Servicios = () => {

    const[serviciosList,setServicios] = useState([]);
    useEffect(() => {
      getServicios(); 
    }, []);

    const getServicios = ()=>{
        Axios.get("http://localhost:3008/servicio")
        .then((response) => {
          setServicios(response.data);
        })
        .catch((error) => {
          console.error('Error al obtener la lista de servicios:', error);
        });
    }

    return (
        <>
            <table className="table table-striped">
            <thead>
                <tr>
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
                        <th scope="row">{val.Categoria}</th>
                        <td>{val.Precio}</td>
                        <td>{val.Terminos_condiciones}</td>
                        <td>{val.Nro_personas_aseguradas}</td>
                    </tr>
                ))
            }
            </tbody>
            </table>
        </>
    );
}

export default Servicios;