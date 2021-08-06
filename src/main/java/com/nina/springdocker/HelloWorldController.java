package com.nina.springdocker;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

    @GetMapping("/msg")
    public String getHelloWorldMessage() {
        return "Hello Welcome to Spring Boot + Dockerfile";
    }
}
