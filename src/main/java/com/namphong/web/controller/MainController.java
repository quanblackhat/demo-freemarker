package com.namphong.web.controller;

import com.namphong.web.model.Article;
import com.namphong.web.model.Menu;
import com.namphong.web.repository.ArticleRepository;
import com.namphong.web.repository.CategoryRepository;
import com.namphong.web.repository.MenuRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@Controller
public class MainController {

    private static final String INDEX_TEMPLATE      =  "/contents/index.ftl";
    private static final String DETAIL_TEMPLATE     =  "/contents/detail.ftl";
    private static final String ABOUT_TEMPLATE     =  "/contents/about.ftl";
    private static final String CONTACT_TEMPLATE     =  "/contents/contact.ftl";

    final ArticleRepository articleRepository;
    final CategoryRepository categoryRepository;
    final MenuRepository menuRepository;

    @Autowired
    public MainController(ArticleRepository articleRepository, CategoryRepository categoryRepository, MenuRepository menuRepository) {
        this.articleRepository = articleRepository;
        this.categoryRepository = categoryRepository;
        this.menuRepository = menuRepository;
    }

    /**
     * Index page
     *
     */
    @GetMapping({"/", "index"})
    public ModelAndView index(@RequestParam(name = "categoryId", required = false) Long categoryId,
                              @RequestParam(name = "page", required = false) Integer page) {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("fragments/main-layout");
        modelAndView.addObject("CONTENT", INDEX_TEMPLATE);

        categoryId = categoryId == null ? -1L : categoryId;
        page = page == null ? 1 : page;

        PageRequest pageRequest = PageRequest.of(page -1 , 6);
        Page<Article> pages = articleRepository.loadArticles(pageRequest,categoryId);

        modelAndView.addObject("totalElements", pages.getTotalElements());
        modelAndView.addObject("totalPages", pages.getTotalPages());
        modelAndView.addObject("page", page);
        modelAndView.addObject("visiblePage", 5);
        modelAndView.addObject("article", pages.getContent().get(0));
        modelAndView.addObject("articles", pages.getContent().subList(1,pages.getContent().size()));

        return modelAndView;
    }

    /**
     * Detail page
     *
     */
    @GetMapping("/detail/{id}")
    public ModelAndView viewDetail(@PathVariable(value="id") Long id) {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("fragments/detail-layout");
        modelAndView.addObject("CONTENT", DETAIL_TEMPLATE);

        Optional<Article> articleOptional = articleRepository.findById(id);
        if (articleOptional.isPresent()) {
            modelAndView.addObject("article", articleOptional.get());
        }
        return modelAndView;
    }

    /**
     * About page
     *
     */
    @GetMapping("/about")
    public ModelAndView about() {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("fragments/about-contact-layout");
        modelAndView.addObject("CONTENT", ABOUT_TEMPLATE);
        modelAndView.addObject("title", "Về chúng tôi");
        return modelAndView;
    }

    /**
     * Contact page
     *
     */
    @GetMapping("/contact")
    public ModelAndView contact() {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("fragments/about-contact-layout");
        modelAndView.addObject("CONTENT", CONTACT_TEMPLATE);

        modelAndView.addObject("title", "Liên hệ với chúng tôi");
        return modelAndView;
    }


    /**
     * Add dynamic component such as menu, category,..
     * @param model
     */
    @ModelAttribute
    private void addAttributes(Model model) {
        //Dynamic Menu
        List<Menu> menus = menuRepository.findParentMenu();
        model.addAttribute("menus", menus);
    }

}
