package org.itv.sig.controller;

import java.util.List;

import org.itv.sig.entity.Indicador;
import org.itv.sig.service.IndicadorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping("/api/indicadores")
@Slf4j
public class IndicadorController {
	
	@Autowired
	private IndicadorService indicadorService;
	
	@GetMapping("")
    public List<Indicador> getIndicadores() {
        log.info("process=get-indicadores");
        return indicadorService.getTodosIndicadores();
    }

}
