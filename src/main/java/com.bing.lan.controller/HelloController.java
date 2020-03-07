package com.bing.lan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Locale;

@Controller
public class HelloController {
 
    @RequestMapping("/hello")
    public String index(Locale locale) {
        System.out.println("Locale: " + locale.toString());
        return "index";
    }
}