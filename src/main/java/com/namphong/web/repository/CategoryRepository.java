
package com.namphong.web.repository;

import com.namphong.web.model.Article;
import com.namphong.web.model.Category;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CategoryRepository extends JpaRepository<Category, Long> {

    @Query(value = "SELECT category"
            + " FROM Category category"
            + " ORDER BY category.id")
    List<Category> findAll();
}
