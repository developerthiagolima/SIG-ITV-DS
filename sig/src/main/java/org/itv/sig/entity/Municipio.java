package org.itv.sig.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Entity @Table(name = "municipios")
@NoArgsConstructor @AllArgsConstructor
@Data @Builder
public class Municipio {

	@Id
    @SequenceGenerator(name = "municipio_id_generator", sequenceName = "municipio_id_seq")
    @GeneratedValue(generator = "municipio_id_generator")
    private Long id;
	
	@Column(nullable = false)
    private String nome;
	
	@Column(nullable = false)
    private String uf;
	
	@JsonProperty("geo_codigo")
	@Column(nullable = false, unique = true)
	private Long geoCodigo;
	
}
