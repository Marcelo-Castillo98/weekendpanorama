package mywkpanorama.lugar.exceptions.personalizados;

import lombok.Getter;
import lombok.Setter;
import mywkpanorama.lugar.exceptions.GlobalExceptionApp;
import org.springframework.http.HttpStatus;

@Getter
@Setter
public class InternalErrorException extends GlobalExceptionApp {

    public InternalErrorException(String message){
        super(HttpStatus.INTERNAL_SERVER_ERROR.value(),message);
    }
}
