package com.example.recaptcha_verifier;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RecaptchaController {

    private final RecaptchaService recaptchaService;

    public RecaptchaController(RecaptchaService recaptchaService) {
        this.recaptchaService = recaptchaService;
    }

    @PostMapping("/verify")
    public boolean verifyRecaptcha(@RequestParam("response") String recaptchaResponse) {
        return recaptchaService.verify(recaptchaResponse);
    }
}
