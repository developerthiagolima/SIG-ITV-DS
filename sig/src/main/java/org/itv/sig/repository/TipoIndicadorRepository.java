package org.itv.sig.repository;

import java.util.List;

import org.itv.sig.entity.Indicador;
import org.itv.sig.entity.TipoIndicador;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface TipoIndicadorRepository extends JpaRepository<TipoIndicador, Long> {

	@Query("SELECT t FROM TipoIndicador t")
	List<TipoIndicador> buscarTodosTiposIndicadores();
}
