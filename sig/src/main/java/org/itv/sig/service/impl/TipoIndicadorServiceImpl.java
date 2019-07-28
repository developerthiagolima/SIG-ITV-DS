package org.itv.sig.service.impl;

import java.util.List;

import org.itv.sig.entity.TipoIndicador;
import org.itv.sig.repository.TipoIndicadorRepository;
import org.itv.sig.service.TipoIndicadorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class TipoIndicadorServiceImpl implements TipoIndicadorService{

	@Autowired
    private TipoIndicadorRepository tipoIndicadorRepository;

	@Override
	public List<TipoIndicador> getTodosTipoIndicadores() {
		return tipoIndicadorRepository.buscarTodosTiposIndicadores();
	}
}
