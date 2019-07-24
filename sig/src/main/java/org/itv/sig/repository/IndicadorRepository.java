package org.itv.sig.repository;

import java.util.List;

import org.itv.sig.entity.Indicador;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface IndicadorRepository extends JpaRepository<Indicador, Long> {

	@Query("SELECT i FROM Indicador i")
	List<Indicador> buscarTodosIndicadores();
}
