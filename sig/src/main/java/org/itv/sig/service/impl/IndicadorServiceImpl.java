package org.itv.sig.service.impl;

import java.util.List;

import org.itv.sig.entity.Indicador;
import org.itv.sig.repository.IndicadorRepository;
import org.itv.sig.service.IndicadorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class IndicadorServiceImpl implements IndicadorService{

	@Autowired
    private IndicadorRepository indicadorRepository;

	@Override
	public List<Indicador> getIndicadorPorTipo(Long indicadorId) {
		return indicadorRepository.buscarPorTipoIndicador(indicadorId);
	}

	@Override
	public List<Indicador> getIndicadorPorTipoMunicipio(Long indicadorId, Long geoCodigo) {
		return indicadorRepository.buscarPorTipoIndicadorMunicipio(indicadorId, geoCodigo);
	}
}
