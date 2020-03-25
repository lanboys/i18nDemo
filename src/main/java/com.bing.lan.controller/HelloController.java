package com.bing.lan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HelloController {

    @Autowired
    ReloadableResourceBundleMessageSource reloadableResourceBundleMessageSource;

    @RequestMapping("/hello")
    public String index(Locale locale, HttpServletRequest request) {
        System.out.println("Locale: " + locale.toString());
        String introduce = reloadableResourceBundleMessageSource.getMessage("introduce", null, locale);
        System.out.println("index(): " + introduce);
        return "index";
    }
}