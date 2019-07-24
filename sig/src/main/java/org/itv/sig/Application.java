package org.itv.sig;

import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
@EnableCaching
public class Application {

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}

	@Bean
    public RestTemplate restTemplate() {
        HttpComponentsClientHttpRequestFactory crf = new HttpComponentsClientHttpRequestFactory();
        crf.setReadTimeout(3000);
        crf.setConnectTimeout(3000);

        HttpClient httpClient = HttpClientBuilder.create()
                                                    .setMaxConnTotal(3000)
                                                    .setMaxConnPerRoute(1000)
                                                    .build();

        crf.setHttpClient(httpClient);

        return new RestTemplate(crf);
    }
}
