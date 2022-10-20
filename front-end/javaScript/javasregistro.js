


//valida que las claves sean iguales
function same_keys(pass, rpass) {

    if (pass == rpass) {
        esigual = true

    } else {
        esigual = false
    }
    console.log(esigual)
    return esigual


}

//valida que no se escriban espacios o no se agregue ningun dato.
function empty_data(user_name, pass, rpass, nombre, last_name) {

    let num = 0;


    if (user_name.match(/\s/) || user_name.length == 0) {
        num++

    }
    if (pass.match(/\s/) || pass.length <= 0) {
        num++
    }
    if (rpass.match(/\s/) || pass.length <= 0) {
        num++
    }
    if (nombre.match(/\s/) || pass.length <= 0) {
        num++
    }
    if (last_name.match(/\s/) || pass.length <= 0) {
        num++
    }
    console.log(num)
    return num;
}
//valida que no se agreguen más de 15 caracteres.
function number_of_char(user_name, pass, rpass, nombre, last_name) {
    let number_char = 0;

    if (user_name.length >= 15) {
        number_char++
    }
    if (pass.length >= 15) {
        number_char++
    }
    if (rpass.length >= 15) {
        number_char++
    }
    if (nombre.length >= 15) {
        number_char++
    }
    if (last_name.length >= 15) {
        number_char++
    }

    return number_char;


}

function envioDato() {

    let user_name = document.getElementById('nombre_usuario').value;
    let pass = document.getElementById('clave').value;
    let rpass = document.getElementById('rclave').value;
    let nombre = document.getElementById('nombre').value;
    let last_name = document.getElementById('apellido').value;
    //se ejecutan todas la validaciones
    let varpass = same_keys(pass, rpass)
    let empty_d = empty_data(user_name, pass, rpass, nombre, last_name)
    let num_char = number_of_char(user_name, pass, rpass, nombre, last_name)
    if (empty_d > 0 || varpass != true || num_char > 0) {
        if (varpass != true) {
            swal("Las contraseñas no coinciden.", "Error al ingresar contraseña.", "error")
        }
        else if (num_char > 0) {
            swal("La cantidad de caracteres excede lo permitido", "Error al ingresar los campos.", "error")
        }
        else {
            swal("Ha ocurrido un error.", "Todos los campos son obligatorios y no se admiten espacios", "error");
        }
    }
    else {


        //se llenan los datos para pasarlos posteriormente como un json
        let data = {
            user_name: user_name,
            password: pass,
            name: nombre,
            last_name: last_name
        };


        fetch('http://localhost:8081/user', {
            method: 'POST',
            body: JSON.stringify(data),
            headers: {
                'Content-Type': 'application/json'
            }

        })
            .then(response => response.json())
            .then(json => {
                let respuesta = [];
                Object.entries(json).forEach(([key, value]) => {

                    respuesta.push(value)
                })
                if (respuesta[0] == 500) {
                    swal("Ha ocurrido un error.", respuesta[1], "error");
                }
                else {
                    swal("Usuario creado correctamente.", respuesta[1], "success")
                        .then((value) => {
                            location.href = "Login.html"
                        });
                }



            });

    }


}




function mostrarPassword() {
    document.getElementById("clave").setAttribute("type", "text");
    document.getElementById("imagen_off").style.display = "none";
    document.getElementById("imagen_on").style.display = "inline";
}

function ocultarPassword() {
    document.getElementById("clave").setAttribute("type", "password");
    document.getElementById("imagen_off").style.display = "inline";
    document.getElementById("imagen_on").style.display = "none";
}


function rmostrarPassword() {
    document.getElementById("rclave").setAttribute("type", "text");
    document.getElementById("rimagen_off").style.display = "none";
    document.getElementById("rimagen_on").style.display = "inline";
}

function rocultarPassword() {
    document.getElementById("rclave").setAttribute("type", "password");
    document.getElementById("rimagen_off").style.display = "inline";
    document.getElementById("rimagen_on").style.display = "none";
}

