package com.example.demo.services;

//fala el dto
import com.example.demo.dtos.UserRegisterDto;
import org.springframework.http.ResponseEntity;

public interface UserService {
    /**
     * Esta función crea un nuevo usuario en la Base de Datos, seteando los datos que llegan (nombre-usuario, clave, nombre, apellido) y el id es autoincremental
     * @param data Recibe los datos del usuario a guardar en Base de Datos (nombre-usuario, clave, nombre, apellido)
     * @return Retorna un usuario registrado en Base de Datos
     */
    public ResponseEntity<?> Register(UserRegisterDto data);

    /**
     * esta funcion Permite Buscar todos los Usuarios en la Base de Datos
     * @return Retorna el listado de todos los usuarios registrados en la Base de Datos
     */
    public ResponseEntity<?> consultAll();

    /**
     * Esta función permite consultar un nombre de usuario en la Base de Datos
     * @param user_name es un String y corresponde al nombre de usuario en Base de Datos
     * @param clave es un String y corresponde a la clave en Base de Datos asociada al nombre de usuario
     * @return Puede Retornar un Nombre de Usuario que haga match con la clave ingresada o puede retornar un error interno
     */
    public ResponseEntity<?> searchByName(String user_name,String clave);
}
