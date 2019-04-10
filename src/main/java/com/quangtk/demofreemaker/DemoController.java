package com.quangtk.demofreemaker;

//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.data.domain.Page;
//import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import java.util.Arrays;
import java.util.List;


@Controller
public class DemoController {

//    @Autowired
//    ArticleRepository articleRepository;

    @ModelAttribute
    public void addAttributes(Model model) {
        //Dynamic Menu
        List<String> menus = Arrays.asList("HOME", "ABOUT", "COURSE", "BLOG", "CONTACT");
        model.addAttribute("menus", menus);
    }

    @GetMapping({"/", "index"})
    public ModelAndView index(Model model) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("fragments/main");
        modelAndView.addObject("CONTENT", "/index.ftl");
//        PageRequest pageRequest = PageRequest.of(0, 10);
//        Page<Article> pages = articleRepository.findAll(pageRequest);
        return modelAndView;
    }

    @GetMapping("/detail")
    public ModelAndView viewDetail() {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("fragments/main");
        modelAndView.addObject("CONTENT", "/detail.ftl");
        return modelAndView;
    }
}
