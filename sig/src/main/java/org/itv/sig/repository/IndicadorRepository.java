package org.itv.sig.repository;

import java.util.List;

import org.itv.sig.entity.Indicador;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface IndicadorRepository extends JpaRepository<Indicador, Long> {

	@Query("SELECT i FROM Indicador i WHERE i.tipo.id = :tipoId")
	List<Indicador> buscarPorTipoIndicador(
			@Param("tipoId") Long tipoId);

	@Query("SELECT i FROM Indicador i WHERE i.municipio.geoCodigo = :geoCodigo AND i.tipo.id = :tipoId")
	List<Indicador> buscarPorTipoIndicadorMunicipio(
			@Param("tipoId") Long tipoId,
			@Param("geoCodigo") Long geoCodigo);

}
