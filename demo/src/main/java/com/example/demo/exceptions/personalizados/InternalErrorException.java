package com.example.demo.exceptions.personalizados;

import com.example.demo.exceptions.GlobalExceptionApp;
import lombok.Getter;
import lombok.Setter;
import org.springframework.http.HttpStatus;

@Getter
@Setter
public class InternalErrorException extends GlobalExceptionApp {

    public InternalErrorException(String mensaje){
        super(HttpStatus.INTERNAL_SERVER_ERROR.value(),mensaje);
    }
}
