function cargarDatosSistema() {
    // 1. Obtener el último usuario o el primero de la lista
    let index = sddm.lastUserIndex || 0;
    let user = sddm.userModel.get(index);

    // 2. Poner el nombre en tu input de "Usuario"
    document.getElementById('input-usuario').value = user.name;

    // 3. Poner la imagen del usuario en el círculo dorado
    // SDDM da la ruta local de la imagen
    document.getElementById('avatar-circulo').style.backgroundImage = "url('" + user.icon + "')";
}