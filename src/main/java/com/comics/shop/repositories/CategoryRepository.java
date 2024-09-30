package com.comics.shop.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.comics.shop.models.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {

}
