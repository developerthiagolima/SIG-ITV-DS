package org.itv.sig.controller;

import java.util.List;

import org.itv.sig.entity.Resultado;
import org.itv.sig.service.ResultadoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping("/api/resultados")
@Slf4j
public class ResultadoController {

	@Autowired
	private ResultadoService resultadoService;

	@GetMapping("/{indicador_id}")
	public List<Resultado> getResultadosPorIndicador(@PathVariable("indicador_id") Long indicadorId) {
		log.info("process=get-resultadosPorIndicador");
		return resultadoService.getResultadosPorIndicador(indicadorId);
	}

	@GetMapping("/{indicador_id}/{municipio_geocodigo}")
	public List<Resultado> getResultadosPorIndicadorMunicipio(@PathVariable("indicador_id") Long indicadorId,
			@PathVariable("municipio_geocodigo") Long geoCodigo) {
		log.info("process=get-resultadosPorIndicadorMunicipio");
		return resultadoService.getResultadosPorIndicadorMunicipio(indicadorId, geoCodigo);
	}

}
