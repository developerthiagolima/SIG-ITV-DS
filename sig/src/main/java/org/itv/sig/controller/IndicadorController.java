package org.itv.sig.controller;

import java.util.List;

import org.itv.sig.entity.Indicador;
import org.itv.sig.service.IndicadorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping("/api/indicadores")
@Slf4j
public class IndicadorController {

	@Autowired
	private IndicadorService resultadoService;

	@GetMapping("/{tipoId}")
	public List<Indicador> getResultadosPorIndicador(@PathVariable("tipoId") Long tipoId) {
		log.info("process=get-resultadosPorIndicador");
		return resultadoService.getIndicadorPorTipo(tipoId);
	}

	@GetMapping("/{tipoId}/{municipio_geocodigo}")
	public List<Indicador> getResultadosPorIndicadorMunicipio(@PathVariable("tipoId") Long tipoId,
			@PathVariable("municipio_geocodigo") Long geoCodigo) {
		log.info("process=get-resultadosPorIndicadorMunicipio");
		return resultadoService.getIndicadorPorTipoMunicipio(tipoId, geoCodigo);
	}

}
