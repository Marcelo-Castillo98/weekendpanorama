package com.example.demo.services;

import org.springframework.http.ResponseEntity;

public interface LugarService {

    public ResponseEntity<?> consultarTodo();

    public ResponseEntity<?> consultarPrecio(Long precio);
}