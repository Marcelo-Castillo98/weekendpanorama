package com.example.demo.exceptions;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ErrorDto {

    private String nombre_usuario;
    private String value;
}