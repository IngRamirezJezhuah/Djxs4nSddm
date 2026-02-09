function intentarLogin() {
    let user = document.getElementById("input_usuario").value;
    let pass = document.getElementById("input_password").value;
    let sessionIndex = sddm.sessionModel.lastIndex;
    sddm.login(user, pass, sessionIndex);
}

// Escuchar si la contraseña fue incorrecta
sddm.loginFailed.connect(function() {
    alert("¡Error! Contraseña incorrecta.");
});