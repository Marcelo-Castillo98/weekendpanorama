package com.example.demo.entities;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.Table;


@Data
@NoArgsConstructor
public class Response {
    private Integer code;
    private String message;



}
