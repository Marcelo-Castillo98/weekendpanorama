
function validar() {
    let num = 0;
    if (document.getElementById("nombre_usuario").value == "") {
        num++

    }
    if (document.getElementById("clave").value == "") {
        num++
    }

    return num;
}

function envioDatoL() {



    if (validar() > 0) {
        swal("Ha ocurrido un error.", "Todos los campos son obligatorios.", "error");
    }
    else {

        let nombre_usuariov = document.getElementById('nombre_usuario').value;

        let clavev = document.getElementById('clave').value;



        let datal = {
            user_name: nombre_usuariov,
            password: clavev,

        };

        
        fetch('http://localhost:8081/user/login', {
            method: 'POST',
            body: JSON.stringify(datal),
            headers: {
                'Content-Type': 'application/json'
            }

        })
            .then(response => response.json())
            .then(json => {
                let respuestal = [];
                Object.entries(json).forEach(([key, value]) => {

                    respuestal.push(value)
                })

                if (respuestal[3] == false) {
                    swal("Ha ocurrido un error.", "clave o usuario incorrecto", "error");
                }
                else if (respuestal[3] == true) {

                    localStorage.setItem('user_name_local', respuestal[0])


                    localStorage.setItem('isLoginUser', respuestal[3]);

                    localStorage.setItem('currenUserData', JSON.stringify(datal));

                    window.location.assign("index.html");

                }
                else {
                    swal("Ha ocurrido un error.", "error al acceder a la base de datos", "error");
                }
            });






    }
}
function verifyIsLogin(pageIsLoginRedirect = 'false', currentPage = 'default') {

    let isLoginUser = localStorage.getItem('isLoginUser');
    console.log(pageIsLoginRedirect, isLoginUser, currentPage, isLoginUser == 'true');

    if (isLoginUser == 'true') {
        console.log(pageIsLoginRedirect, isLoginUser, currentPage);
        if (pageIsLoginRedirect == 'true') {
            window.location.assign("index.html");
        }

    } else {
        if (currentPage != 'login') {
            window.location.assign("Login.html");
        }
    }

}

function logoutUser() {

    let isLoginUser = localStorage.getItem('isLoginUser');

    if (isLoginUser) {
        localStorage.removeItem('isLoginUser');
        localStorage.removeItem('currenUserData');
    }
    window.location.assign("Login.html")

}

function getDataUser() {
    let dataUser = JSON.parse(localStorage.getItem('currenUserData'));
    return dataUser;
}

function welcomeName() {
    let name = document.getElementById('welcomeUser');
    name.innerText = getDataUser().nombre;
}







function lmostrarPassword() {
    document.getElementById("clave").setAttribute("type", "text");
    document.getElementById("imagen_off").style.display = "none";
    document.getElementById("imagen_on").style.display = "inline";
}

function locultarPassword() {
    document.getElementById("clave").setAttribute("type", "password");
    document.getElementById("imagen_off").style.display = "inline";
    document.getElementById("imagen_on").style.display = "none";
}





