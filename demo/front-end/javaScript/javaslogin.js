
/*function validar() {
    let num = 0;
    if (document.getElementById("nombre_usuario").value == "") {
        num++

    }
    if (document.getElementById("clave").value == "") {
        num++
    }
   
    return num;
}
*/
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
        .then(response => response.json())
        .then(json => {
            let respuestal = [];
            Object.entries(json).forEach(([key, value]) => {

                respuestal.push(value)
            })
            //console.log(respuestal[3])
            if (respuestal[3]==false){
                swal("Ha ocurrido un error.", "clave o usuario incorrecto", "error");
            }
            else if(respuestal[3]==true){
                localStorage.setItem('isLoginUser',respuestal[3]);
                location.href = "main.html"
            }
            else{
                swal("Ha ocurrido un error.", "error al acceder a la base de datos", "error");
            }
        });
        //console.log(respuestal)
        //.then(response => response.json())
        //.then(hola => response)
            //console.log(response)
            
    }

    

//}

//-------------







