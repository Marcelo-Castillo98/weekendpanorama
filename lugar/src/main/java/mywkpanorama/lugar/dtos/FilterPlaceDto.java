package mywkpanorama.lugar.dtos;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class FilterPlaceDto {
    private String place_name;
    private String ubication;
    private String description;
    private Long price;
    private String img;
}
