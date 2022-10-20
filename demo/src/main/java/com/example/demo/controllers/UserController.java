package com.example.demo.controllers;

import com.example.demo.dtos.UserRegisterDto;
import com.example.demo.services.UserService;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
@CrossOrigin("*")
@Log4j2
public class UserController {
    private final UserService service;

    public UserController(UserService service) {
        this.service = service;
    }

    @GetMapping
    public ResponseEntity<?> consultAll(){
        return service.consultAll();
    }
    @PostMapping
    public ResponseEntity<?> Registration(@RequestBody UserRegisterDto data) {
        return service.Register(data);
    }
    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody UserRegisterDto data){
        return service.searchByName(data.getUser_name(),data.getPassword());
    }
}






