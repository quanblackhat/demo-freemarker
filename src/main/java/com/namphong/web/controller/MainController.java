package com.namphong.web.controller;

import com.namphong.web.model.Article;
import com.namphong.web.model.Category;
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

        ModelAndView modelAndView = this.initView(INDEX_TEMPLATE);


        categoryId = categoryId == null ? -1L : categoryId;
        page = page == null ? 1 : page;

        PageRequest pageRequest = PageRequest.of(page -1 , 10);
        Page<Article> pages = articleRepository.loadArticles(pageRequest,categoryId);


        modelAndView.addObject("totalElements", pages.getTotalElements());
        modelAndView.addObject("totalPages", pages.getTotalPages());
        modelAndView.addObject("page", page);
        modelAndView.addObject("visiblePage", 5);
        modelAndView.addObject("articles", pages.getContent());

        return modelAndView;
    }

    /**
     * Detail page
     *
     */
    @GetMapping("/detail/{id}")
    public ModelAndView viewDetail(@PathVariable(value="id") Long id) {

        ModelAndView modelAndView = this.initView(DETAIL_TEMPLATE);
        Optional<Article> articleOptional = articleRepository.findById(id);
        if (articleOptional.isPresent()) {
            modelAndView.addObject("article", articleOptional.get());
        }
        return modelAndView;
    }

    @ModelAttribute
    private void addAttributes(Model model) {
        //Dynamic Menu
        List<Menu> menus = menuRepository.findAll();
        model.addAttribute("menus", menus);

        //Dynamic Category
        List<Category> categories = categoryRepository.findAll();
        model.addAttribute("categories", categories);

        //Recently article
        List<Article> recentArticles = articleRepository.findTop3ByOrderByDateCreatedDesc();
        model.addAttribute("recentArticles", recentArticles);
    }

    private ModelAndView initView(String contentFragment) {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("fragments/main");
        modelAndView.addObject("CONTENT", contentFragment);
        modelAndView.addObject("HEADER", "/fragments/header.ftl");
        modelAndView.addObject("SIDEBAR", "/fragments/sidebar.ftl");
        modelAndView.addObject("FOOTER", "/fragments/footer.ftl");
        modelAndView.addObject("SETTING", "/fragments/setting.ftl");

        return modelAndView;
    }
}
