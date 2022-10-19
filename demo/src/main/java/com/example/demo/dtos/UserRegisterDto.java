package com.example.demo.dtos;


import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class UserRegisterDto {
    private String user_name;
    private String password;
    private String name;
    private String last_name;

}
