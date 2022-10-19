package com.example.demo.services.impl;

import com.example.demo.dtos.UserRegisterDto;
import com.example.demo.entities.User;
import com.example.demo.exceptions.personalizados.UserNotAvailable;
import com.example.demo.repositories.UserRepository;
import com.example.demo.services.UserService;
import org.springframework.data.domain.Example;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {
    private final UserRepository repository;
    public UserServiceImpl(UserRepository repository) {
        this.repository = repository;
    }

    @Override
    public ResponseEntity<?> Register(UserRegisterDto data) {
       try{
           User userNotSaved =new User();
           userNotSaved.setUser_name(data.getUser_name());
           Long cont = repository.count( Example.of(userNotSaved));
           if(cont > 0){

              // throw new UsuarioNoDisponibleException("Usuario Repetido");
               UserNotAvailable usernodisp =new UserNotAvailable();
               return ResponseEntity.status(HttpStatus.OK).body(usernodisp.UsuarioNoDisponible("Usuario Repetido", HttpStatus.INTERNAL_SERVER_ERROR.value()));
           }

           userNotSaved.setPassword(data.getPassword());
           userNotSaved.setName(data.getName());
           userNotSaved.setLast_name(data.getLast_name());
           User createdUser =repository.save(userNotSaved);
           return ResponseEntity.status(HttpStatus.OK).body(createdUser);
       }
       catch(Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(e.getMessage());
        }
    }
    public ResponseEntity<?> consultAll() {

        try{
            List<User> users =repository.findAll();
            return ResponseEntity.status(HttpStatus.OK).body(users);
        }
        catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(e.getMessage());
        }
    }
    @Override
    public ResponseEntity<?> searchByName(String user_name, String clave) {

        try{
        User userInDB =repository.searchByName(user_name).orElse(null);
        boolean passwordInDBEqualsIncomingPassword= userInDB.getPassword().equals(clave);

        Map<String,Object> respuesta=new HashMap<>();
        respuesta.put("La clave OK",passwordInDBEqualsIncomingPassword);
        respuesta.put("Nombre",user_name);
        respuesta.put("Clave en BD", userInDB.getPassword());
        respuesta.put("Clave entrante",clave);

        return ResponseEntity.status(HttpStatus.OK).body(respuesta);
        }
        catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(e.getMessage());
        }
    }
}
