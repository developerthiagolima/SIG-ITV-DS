function carregarIndicador(combo, action) {
	$(combo).html("<option><i>Carregando...</i><\/option>");
	$.ajax({
		type : "GET",
		url : action,
		data : '',
		dataType : "json",
		async : false,
		success : function(resposta) {
			var objeto = resposta;
			var i = 0;
			var html = "";
			if (objeto && objeto.length > 0) {
				if (objeto.length == 1) {
					html = "<option value=''>Escolha uma op&ccedil;&atilde;o<\/option>";
					html = html + "<option value=\"" + objeto[0].id
							+ "\" selected=\"selected\">"
							+ objeto[0].nome + "<\/option>";
					$(combo).html(html);
					$(combo).change();
				} else {
					html = "<option value=''>Escolha uma op&ccedil;&atilde;o<\/option>";
					for (i = 0; i < objeto.length; i++) {
						html = html + "<option value=\""
								+ objeto[i].id + "\">"
								+ objeto[i].nome + "<\/option>";
					}
					$(combo).html(html);
				}
			} else {
				html = "<option value=''>Nenhuma op&ccedil;&atilde;o encontrada<\/option>";
				$(combo).html(html);
			}
		}
	});
}