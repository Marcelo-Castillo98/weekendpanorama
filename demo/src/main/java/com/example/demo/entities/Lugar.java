package com.example.demo.entities;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name="lugares")
@Data
@NoArgsConstructor

public class Lugar {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nombre_l;
    private String ubicacion;
    private String descripcion;
    private Long precio;
    private String img;
}
