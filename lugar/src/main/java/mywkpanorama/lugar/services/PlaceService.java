package mywkpanorama.lugar.services;

import org.springframework.http.ResponseEntity;

public interface PlaceService {
    /**
     *esta funcion Permite Buscar todos los Lugares en la Base de Datos
     * @return Retorna el listado de todos los lugares registrados en la Base de Datos
     */
    public ResponseEntity<?> consultAll();

    /**
     * Esta función permite consultar un precio en la Base de Datos
     * @param price en un Long y corresponde al precio asociado a un lugar en la Base de Datos
     * @return Puede Retornar un lugar que haga match con el precio indicado o puede retornar un error interno
     */
    public ResponseEntity<?> searchPrice(Long price);
}
