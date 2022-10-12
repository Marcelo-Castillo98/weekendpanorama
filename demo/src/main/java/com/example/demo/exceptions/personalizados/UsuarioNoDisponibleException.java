package com.example.demo.exceptions.personalizados;


import com.example.demo.entities.Response;
import com.example.demo.exceptions.GlobalExceptionApp;
import lombok.Getter;
import lombok.Setter;
import org.springframework.http.HttpStatus;

@Getter
@Setter
public class UsuarioNoDisponibleException  {
    public Response UsuarioNoDisponible(String mensaje, Integer codigo){
        Response response = new Response();
        response.setCodigo(codigo);
        response.setMensaje(mensaje);
        return response;
    }
}
