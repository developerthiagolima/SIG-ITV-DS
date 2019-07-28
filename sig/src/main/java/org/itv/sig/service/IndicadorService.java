package org.itv.sig.service;

import java.util.List;

import org.itv.sig.entity.Indicador;

public interface IndicadorService {

	List<Indicador> getIndicadorPorTipo(Long tipoId);

	List<Indicador> getIndicadorPorTipoMunicipio(Long indicadorId, Long geoCodigo);

}
