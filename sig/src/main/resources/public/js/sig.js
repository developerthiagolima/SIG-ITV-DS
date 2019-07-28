
function init(){
	carregarIndicadores('#indicador', 'api/tipoindicadores');
	iniciarMapa();
}

async function fetchAsync(url) {
	return (await fetch(url)).json();
}

function carregarIndicadores(combo, url) {
	$(combo).html("<option><i>Carregando...</i><\/option>");
	var resposta = fetchAsync(url);
	resposta.then(objeto => {
		if (objeto && objeto.length > 0) {
			html = "<option value='0'>Escolha um indicador<\/option>";
			for (i = 0; i < objeto.length; i++) {
				html = html + "<option value=\"" + objeto[i].id
						+ "\">" + objeto[i].nome + "<\/option>";
			}
			$(combo).html(html);
		} else {
			html = "<option value='0'>Nenhuma op&ccedil;&atilde;o encontrada<\/option>";
			$(combo).html(html);
		}
	});
}

