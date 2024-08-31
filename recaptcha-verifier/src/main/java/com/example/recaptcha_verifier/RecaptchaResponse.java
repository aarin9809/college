package com.example.recaptcha_verifier;

import com.fasterxml.jackson.annotation.JsonAlias;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import java.util.List;

@Data
@JsonIgnoreProperties(ignoreUnknown = true)
public class RecaptchaResponse {

    private boolean success;

    @JsonAlias("error-codes")
    private List<String> errorCodes;
}
