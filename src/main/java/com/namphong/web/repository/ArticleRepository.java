
package com.namphong.web.repository;

import com.namphong.web.model.Article;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ArticleRepository extends JpaRepository<Article, Long> {

    @Query(value = "SELECT article"
            + " FROM Article article"
            + " ORDER BY article.id DESC ")
    Page<Article> findAll(Pageable pageable);

    @Query(value = "SELECT article"
            + " FROM Article article"
            + " LEFT JOIN article.categories category"
            + " WHERE category.id = :categoryId"
            + " ORDER BY article.id DESC ")
    Page<Article> findByCategory(Pageable pageable, @Param("categoryId") Long categoryId);


}
