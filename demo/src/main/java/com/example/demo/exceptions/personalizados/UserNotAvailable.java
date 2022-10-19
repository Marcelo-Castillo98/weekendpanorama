package com.example.demo.exceptions.personalizados;


import com.example.demo.entities.Response;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserNotAvailable {
    public Response UsuarioNoDisponible(String message, Integer code){
        Response response = new Response();
        response.setCode(code);
        response.setMessage(message);
        return response;
    }
}
