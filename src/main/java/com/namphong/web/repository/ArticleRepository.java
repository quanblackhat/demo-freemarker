
package com.namphong.web.repository;

import com.namphong.web.model.Article;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ArticleRepository extends JpaRepository<Article, Long> {

    @Query(value = "SELECT article"
            + " FROM Article article"
            + " LEFT JOIN article.categories category"
            + " WHERE ((:categoryId = -1L) OR (category.id = :categoryId))"
            + " ORDER BY article.dateCreatedTimestamp DESC ")
    Page<Article> loadArticles(Pageable pageable, @Param("categoryId") Long categoryId);

    List<Article> findTop3ByOrderByDateCreatedTimestampDesc();


}
