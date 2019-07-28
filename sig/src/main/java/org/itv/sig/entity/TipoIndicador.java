package org.itv.sig.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
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
	
	@Column(nullable = false)
    private String nome;
}
