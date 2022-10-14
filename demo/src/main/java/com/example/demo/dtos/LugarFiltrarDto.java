package com.example.demo.dtos;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class LugarFiltrarDto {
    private String nombre_l;
    private String ubicacion;
    private String descripcion;
    private Long precio;
    private String img;
}
