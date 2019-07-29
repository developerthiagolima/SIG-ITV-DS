var map, view, vectorLayer;

function iniciarMapa(){
	carregarGeojson();
}

function criarMap(municipios){
	vectorLayer = new ol.layer.Vector({
	    source: new ol.source.Vector({
	    	features: (new ol.format.GeoJSON()).readFeatures(municipios)
		}),
		style: (feature) => {
			return criarMapStyle(feature, 'lightgoldenrodyellow')
		}
	});
	map = new ol.Map({
	    target: 'mapa',
	    layers: [
	        /*new ol.layer.Tile({
	          source: new ol.source.BingMaps({
		      	    key: 'AhElmySDK3gSzZhOtryBrw-_s4Jt0yqP1RQEIm0Jiv5hWxd0yiqrW-IzcBgujoT4',
		    	    imagerySet: 'Road' //Aerial
		    	})
	        }),*/
	        vectorLayer
	      ],
	    view: new ol.View({
	        center: [-5300090, -507816],
	        zoom: 7.5
	    })
	});
}

function carregarIndicador(indicadorId){
	if(indicadorId == 0){
		vectorLayer.getSource().getFeatures().forEach((feature, index) => {
			feature.setStyle(criarMapStyle(feature, 'lightgoldenrodyellow'))
		});
	} else {
		var scale = d3.scaleLinear().domain([0, 0.5, 1]).range(['green', 'yellow', 'red']);
		vectorLayer.getSource().getFeatures().forEach((feature, index) => {	
			var geocode = feature.values_.GEOCODIGO;
			var indicador = fetchAsync('api/indicadores/'+indicadorId+'/'+geocode);
			indicador.then(data => {
				data.forEach(resultado => {
					feature.setStyle(criarMapStyle(feature, scale(resultado.valor)))
				})
			});
		});
	}
}

function carregarGeojson(){
	var features = [];
	var geojson = fetchAsync('data/municipios.geojson');
	geojson.then(data => {
		data.features.forEach((feature, index) => {
			var coordinates = feature.geometry.coordinates[0][0].map(c => {
	            return ol.proj.fromLonLat(c);
	        });
			features.push({
	            type: 'Feature',
	            properties: feature.properties,
	            geometry: {
	                type: feature.geometry.type,
	                coordinates: [[coordinates]]
	            }
	        });
		});
		var geojson = {
	        'type': 'FeatureCollection',
	        'name': 'municipios',
	        'crs': {
	            'type': 'name',
	            'properties': {
	                'name': 'urn:ogc:def:crs:EPSG::4618'
	            }
	        },
	        features
	    };
		criarMap(geojson);
	});
}

function criarMapStyle(obj, color){
	return new ol.style.Style({
        stroke: new ol.style.Stroke({
            color: 'gray',
            width: 0.5
        }),
        fill: new ol.style.Fill({
            color
        }),
        text: new ol.style.Text({
        	overflow: true,
        	text: obj.values_.NOME + ' - ' + obj.values_.UF
        })
    });
}

