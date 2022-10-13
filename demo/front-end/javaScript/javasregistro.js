

                    function pass() {
                        let clave = document.getElementById("clave").value
                        let rclave = document.getElementById("rclave").value
                        
                        if (clave==rclave)
                        {
                            esigual=true

                        }else{
                            esigual=false
                            swal("Las contraseñas no coinciden.", "Error al ingresar contraseña.", "error")

                        }
                        return esigual


                    }
                    

                    function validar() {
                        let num = 0;
                        if (document.getElementById("nombre_usuario").value == "") {
                            num++

                        }
                        if (document.getElementById("clave").value == "") {
                            num++
                        }
                        if (document.getElementById("nombre").value == "") {
                            num++
                        }
                        if (document.getElementById("apellido").value == "") {
                            num++
                        }
                        return num;
                    }

                    function envioDato() {
                        let varpass = pass()                        


                        if (validar() > 0 && varpass != true) {
                            swal("Ha ocurrido un error.", "Todos los campos son obligatorios.", "error");
                        }
                        else {

                            let nombre_usuariov = document.getElementById('nombre_usuario').value;

                            let clavev = document.getElementById('clave').value;
                            let nombrev = document.getElementById('nombre').value;
                            let apellidov = document.getElementById('apellido').value;


                            let data = {
                                nombre_usuario: nombre_usuariov,
                                clave: clavev,
                                nombre: nombrev,
                                apellido: apellidov
                            };

                            let usuariorepetido;
                            fetch('http://localhost:8080/usuario', {
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

//-------------

                    
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
               
            