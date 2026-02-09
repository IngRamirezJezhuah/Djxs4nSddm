document.addEventListener("DOMContentLoaded", function(){
    for (let i = 0; i < saddm.userModel.count; i++){
        let user = sddm.userModel.get(i);
        console.log("usuario encontado:" + user.name);

    }
});