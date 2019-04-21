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

    private static final String INDEX_TEMPLATE          =  "layouts/index";
    private static final String DETAIL_TEMPLATE         =  "layouts/detail";
    private static final String ABOUT_TEMPLATE          =  "layouts/about";
    private static final String CONTACT_TEMPLATE        =  "layouts/contact";

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
        modelAndView.setViewName(INDEX_TEMPLATE);
//        modelAndView.addObject("CONTENT", INDEX_TEMPLATE);

        categoryId = categoryId == null ? -1L : categoryId;
        page = page == null ? 1 : page;

        PageRequest pageRequest = PageRequest.of(page -1 , 10);
        Page<Article> pages = articleRepository.loadArticles(pageRequest,categoryId);

        modelAndView.addObject("totalElements", pages.getTotalElements());
        modelAndView.addObject("totalPages", pages.getTotalPages());
        modelAndView.addObject("page", page);
        modelAndView.addObject("visiblePage", 5);
        modelAndView.addObject("article", pages.getContent().get(0));
        modelAndView.addObject("lastArticles", pages.getContent());

        return modelAndView;
    }

    /**
     * Detail page
     *
     */
    @GetMapping("/detail/{id}")
    public ModelAndView viewDetail(@PathVariable(value="id") Long id) {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName(DETAIL_TEMPLATE);

        Optional<Article> articleOptional = articleRepository.findById(id);
        if (articleOptional.isPresent()) {
            modelAndView.addObject("article", articleOptional.get());
        }

        Long categoryId = -1L;

        PageRequest pageRequest = PageRequest.of(0 , 3);
        Page<Article> pages = articleRepository.loadArticles(pageRequest,categoryId);
        modelAndView.addObject("relatedArticlesOne", pages.getContent());
        modelAndView.addObject("mostView", pages.getContent());

        pageRequest = PageRequest.of(1 , 3);
        pages = articleRepository.loadArticles(pageRequest,categoryId);
        modelAndView.addObject("relatedArticlesTwo", pages.getContent());


        return modelAndView;
    }

    /**
     * About page
     *
     */
    @GetMapping("/about")
    public ModelAndView about() {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName(ABOUT_TEMPLATE);
        return modelAndView;
    }

    /**
     * Contact page
     *
     */
    @GetMapping("/contact")
    public ModelAndView contact() {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName(CONTACT_TEMPLATE);

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
