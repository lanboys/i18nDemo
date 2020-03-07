package com.bing.lan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Locale;

@Controller
public class HelloController {

    @Autowired

    ReloadableResourceBundleMessageSource messageSource;

    @RequestMapping("/hello")
    public String index(Locale locale) {
        String welcome = messageSource.getMessage("language.welcome", null, locale);
        System.out.println("国际化资源文件Locale配置:" + welcome);
        return "index";
    }
}