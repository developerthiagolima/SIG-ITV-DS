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

@Entity @Table(name = "resultados")
@NoArgsConstructor @AllArgsConstructor
@Data @Builder
public class Resultado {

	@Id
    @SequenceGenerator(name = "resultado_id_generator", sequenceName = "resultado_id_seq")
    @GeneratedValue(generator = "resultado_id_generator")
    private Long id;
	
	@ManyToOne
    private Municipio municipio;
	
	@ManyToOne
	private Indicador indicador;
	
	private Double valor;
	
}
