var plantas = []

function cargarPlantas() {
    fetch('controlador.php?action=getAll&table=Especies')
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }
            return response.json(); // Procesar como JSON
        })
        .then(data => {
            console.log('Datos:', data);
            data.forEach(element => {
                plantas.push(element)
            });
           alert(plantas)
           renderizarFrutas()
        })
        .catch(error => console.error('Error:', error));
      
}

function renderizarFrutas() {
 
    const container = document.getElementById('plantas-container');
    container.innerHTML = '';
    alert("Cargando plantas "+ plantas)
    plantas.forEach(planta => {
        
      

        const card = document.createElement('div');
        card.className = 'planta-card';
        card.innerHTML = `
            <img src="Plantas/${planta.Foto1}" alt="${planta.Nombre}">
            <h3>${planta.Nombre}</h3>
            <p>${planta.Descripcion}</p>
            <p><strong>Precio:</strong> $${planta.Precio}</p>
            <button onclick="comprarFruta('${planta.Nombre}', ${planta.Precio})">Comprar</button>
        `;
        container.appendChild(card);
    });
}


function comprarFruta(nombre, precio) {
    alert(`Has comprado ${nombre} por $${precio.toFixed(2)}.`);
    factura(precio);
}


document.addEventListener('DOMContentLoaded', cargarPlantas);

function factura(monto) {
    fetch('controlador.php?action=callProcedure', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            procedureName: 'sp_CrearFactura',
            params: { p_Monto: monto}
        })
    })
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }
            return response.json(); // Procesar como JSON
        })
        .then(data => console.log('Respuesta del servidor:', data))
        .catch(error => {
            console.error('Error en la solicitud:', error);
        });  

}
