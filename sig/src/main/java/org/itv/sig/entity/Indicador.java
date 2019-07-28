package org.itv.sig.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity @Table(name = "indicadores")
@NoArgsConstructor @AllArgsConstructor
@Data @Builder
public class Indicador {

	@Id
    @SequenceGenerator(name = "indicador_id_generator", sequenceName = "indicador_id_seq")
    @GeneratedValue(generator = "indicador_id_generator")
    private Long id;
	
	@ManyToOne
    private Municipio municipio;
	
	@ManyToOne
	private TipoIndicador tipo;
	
	private Double valor;
	
}
