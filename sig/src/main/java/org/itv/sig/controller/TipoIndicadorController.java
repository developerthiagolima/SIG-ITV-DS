package org.itv.sig.controller;

import java.util.List;

import org.itv.sig.entity.Indicador;
import org.itv.sig.entity.TipoIndicador;
import org.itv.sig.service.TipoIndicadorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping("/api/tipoindicadores")
@Slf4j
public class TipoIndicadorController {
	
	@Autowired
	private TipoIndicadorService tipoIndicadorService;
	
	@GetMapping("")
    public List<TipoIndicador> getTiposIndicadores() {
        log.info("process=get-tiposIndicadores");
        return tipoIndicadorService.getTodosTipoIndicadores();
    }

}
