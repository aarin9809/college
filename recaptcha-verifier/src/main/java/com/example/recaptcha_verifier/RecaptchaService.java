package com.example.recaptcha_verifier;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.HashMap;
import java.util.Map;

@Service
public class RecaptchaService {

    @Value("${recaptcha.secret}")
    private String recaptchaSecret;

    private final RestTemplate restTemplate;

    public RecaptchaService(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public boolean verify(String recaptchaResponse) {
        String url = "https://www.google.com/recaptcha/api/siteverify";
        Map<String, String> body = new HashMap<>();
        body.put("secret", recaptchaSecret);
        body.put("response", recaptchaResponse);
        RecaptchaResponse response = restTemplate.postForObject(url, body, RecaptchaResponse.class);
        return response.isSuccess();
    }
}
