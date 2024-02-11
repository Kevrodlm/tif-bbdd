import React from 'react';
import './Cards.css';
import CardItem from './CardItem';

function Cards() {
  return (
    <div className='cards'>
      <div className="container">
        <h3>El Seguro de Accidentes Personales tiene por finalidad otorgar asistencia médica en caso de lesión corporal fortuita y/u ocasional.</h3>
        <p>Si la póliza lo indica, es posible que este seguro brinde adicionalmente las siguientes coberturas:</p>
        <ul>
            <li>Indemnización por muerte accidental.</li>
            <li>Indemnización por invalidez permanente: puede ser total o parcial, según la póliza que contrates.</li>
            <li>Pensiones diarias en caso de incapacidad temporal durante el tiempo que te encuentres imposibilitado de realizar tus actividades diarias, entre otros.</li>
        </ul>
        <div className="importante">
            <h5>IMPORTANTE:</h5>
            <p>Si necesitas información sobre seguros de un familiar fallecido, puedes solicitar la emisión de un Certificado de Pólizas. Para más información ingresa</p>
        </div>
    </div>
      <div className='cards__container'>
        <div className='cards__wrapper'>
          <ul className='cards__items'>
            <CardItem
              src='images/img-9.jpg'
              text='Cobertura de gastos médicos: Ofrecemos asistencia médica integral para cubrir los gastos derivados de accidentes, incluyendo hospitalización, cirugías, consultas médicas y medicamentos.'
              label='Nosotros te cubrimos'
              path='/services'
            />
            <CardItem
              src='images/img-2.jpg'
              text='Asistencia en viajes: Estamos contigo donde sea que vayas. Si sufres un accidente mientras estás de viaje, te brindamos asistencia médica, repatriación sanitaria y otros servicios de emergencia para garantizar tu seguridad y bienestar.'
              label='Indemnización'
              path='/services'
            />
          </ul>
          <ul className='cards__items'>
            <CardItem
              src='images/img-3.jpg'
              text='Cobertura por fallecimiento: En caso de fallecimiento a causa de un accidente, proporcionamos una compensación económica a tus beneficiarios para ayudarles a hacer frente a los gastos funerarios y a mantener su calidad de vida.'
              label='Pensiones'
              path='/services'
            />
            <CardItem
              src='images/img-4.jpg'
              text='Rehabilitación y terapias: Además de la atención médica inicial, ofrecemos programas de rehabilitación física y terapias especializadas para ayudarte en tu proceso de recuperación y reintegración a la vida cotidiana.'
              label='Adventure'
              path='/products'
            />
            <CardItem
              src='images/img-8.jpg'
              text='Cobertura para deportes y actividades de riesgo: Si practicas deportes o actividades de riesgo, como escalada, surf o skydiving, te ofrecemos una cobertura especializada para protegerte en caso de accidentes relacionados con estas actividades.'
              label='Adrenaline'
              path='/sign-up'
            />
            </ul>
            <ul className='cards__items'>
            <CardItem
              src='images/img-8.jpg'
              text='Asistencia legal: En situaciones en las que necesites asesoramiento legal o representación jurídica debido a un accidente, te proporcionamos asistencia legal para proteger tus derechos e intereses.'
              label='Adrenaline'
              path='/sign-up'
            />
            <CardItem
              src='images/img-8.jpg'
              text='Servicios de apoyo psicológico: Entendemos que los accidentes pueden tener un impacto emocional significativo. Por eso, ofrecemos servicios de apoyo psicológico y asesoramiento para ayudarte a superar el trauma y recuperarte emocionalmente.'
              label='Adrenaline'
              path='/sign-up'
            />
            <ul className='cards__items'></ul>
            <CardItem
              src='images/img-8.jpg'
              text='Asistencia en caso de robo o pérdida de pertenencias: Además de la cobertura por accidentes, te ofrecemos asistencia en caso de robo o pérdida de pertenencias personales, como documentos de identificación, dispositivos electrónicos y equipos deportivos.'
              path='/sign-up'
            />
            <CardItem
              src='images/img-8.jpg'
              text='Descuentos y beneficios adicionales: Como cliente de nuestro seguro contra accidentes, puedes disfrutar de una variedad de descuentos y beneficios adicionales, como servicios de asistencia en el hogar, programas de bienestar y actividades recreativas.'
              label='Adrenaline'
              path='/sign-up'
            />
          </ul>
        </div>
      </div>
    </div>
  );
}

export default Cards;