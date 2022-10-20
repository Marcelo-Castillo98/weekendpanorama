package mywkpanorama.lugar.exceptions;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ErrorDto {

    private String place_name;
    private String ubication;
    private String description;
    private Long price;
    private String img;
    private String value;
}
