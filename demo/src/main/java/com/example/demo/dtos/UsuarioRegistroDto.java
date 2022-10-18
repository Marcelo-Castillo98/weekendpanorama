package com.example.demo.dtos;


import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class UsuarioRegistroDto {
    private String nombre_usuario;
    private String clave;
    private String nombre;
    private String apellido;

}
