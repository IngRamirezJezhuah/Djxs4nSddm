function actualizarReloj() {
    const ahora = new Date();
    // Puedes enviarlo a un ID en tu HTML (ej: <div id="reloj"></div>)
    document.getElementById('reloj').innerHTML = ahora.toLocaleTimeString();
    document.getElementById('fecha').innerHTML = ahora.toLocaleDateString();
}
setInterval(actualizarReloj, 1000);