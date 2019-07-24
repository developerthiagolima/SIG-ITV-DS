package org.itv.sig.service.impl;

import java.util.List;

import org.itv.sig.entity.Resultado;
import org.itv.sig.repository.ResultadoRepository;
import org.itv.sig.service.ResultadoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ResultadoServiceImpl implements ResultadoService{

	@Autowired
    private ResultadoRepository resultadoRepository;

	@Override
	public List<Resultado> getResultadosPorIndicador(Long indicadorId) {
		return resultadoRepository.buscarPorIndicador(indicadorId);
	}

	@Override
	public List<Resultado> getResultadosPorIndicadorMunicipio(Long indicadorId, Long geoCodigo) {
		return resultadoRepository.buscarPorIndicadorMunicipio(indicadorId, geoCodigo);
	}
}
