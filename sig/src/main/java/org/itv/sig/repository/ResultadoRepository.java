package org.itv.sig.repository;

import java.util.List;

import org.itv.sig.entity.Resultado;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ResultadoRepository extends JpaRepository<Resultado, Long> {

	@Query("SELECT r FROM Resultado r WHERE r.indicador.id = :indicadorId")
	List<Resultado> buscarPorIndicador(
			@Param("indicadorId") Long indicadorId);

	@Query("SELECT r FROM Resultado r WHERE r.municipio.geoCodigo = :geoCodigo AND r.indicador.id = :indicadorId")
	List<Resultado> buscarPorIndicadorMunicipio(
			@Param("indicadorId") Long indicadorId,
			@Param("geoCodigo") Long geoCodigo);

}
