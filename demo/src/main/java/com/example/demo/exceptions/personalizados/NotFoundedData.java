package com.example.demo.exceptions.personalizados;

import com.example.demo.exceptions.GlobalExceptionApp;
import lombok.Getter;
import lombok.Setter;
import org.springframework.http.HttpStatus;

@Getter
@Setter
public class NotFoundedData extends GlobalExceptionApp {

    public NotFoundedData(String message){
        super(HttpStatus.NOT_FOUND.value(),message);
    }
}
