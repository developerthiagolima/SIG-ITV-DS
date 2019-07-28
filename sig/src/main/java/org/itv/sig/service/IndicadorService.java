package org.itv.sig.service;

import java.util.List;

import org.itv.sig.entity.Resultado;

public interface ResultadoService {

	List<Resultado> getResultadosPorIndicador(Long indicadorId);

	List<Resultado> getResultadosPorIndicadorMunicipio(Long indicadorId, Long geoCodigo);

}
