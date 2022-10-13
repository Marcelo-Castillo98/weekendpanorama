
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
                     


   /* if (validar() > 0 ) {
        swal("Ha ocurrido un error.", "Todos los campos son obligatorios.", "error");
    }
    else {
*/
        let nombre_usuariov = document.getElementById('nombre_usuario').value;
        //console.log(nombre_usuariov)
        let clavev = document.getElementById('clave').value;
       //console.log(clavev)


        let datal = {
            nombre_usuario: nombre_usuariov,
            clave: clavev,
            
        };

        let usuariorepetido;
        fetch('http://localhost:8080/usuario/login', {
            method: 'POST', 
            body: JSON.stringify(datal), 
            headers: {
                'Content-Type': 'application/json'
            }

        })
        .then(response => console.log(response.json()))
        .then(hola => console.log(hola))
            //console.log(response)
            
    }

    

//}

//-------------







