package mywkpanorama.lugar.entities;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name="lugares")
@Data
@NoArgsConstructor

public class Place {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String place_name;
    private String ubication;
    private String description;
    private Long price;
    private String img;
}
