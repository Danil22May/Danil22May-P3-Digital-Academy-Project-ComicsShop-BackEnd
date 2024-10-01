package com.comics.shop.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.comics.shop.models.Product;
import com.comics.shop.repositories.ProductRepository;
import com.comics.shop.services.ProductService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@RestController
@RequestMapping("/api/v1")
public class ProductController {
    @Autowired
    private ProductService productService;

    @GetMapping("/products")
    public Page<Product> getAllProducts(
            @RequestParam(name = "page", required = true) int page,
            @RequestParam(name = "limit", required = true) int limit) {

        return productService.getAllProducts(page, limit);
    }

    @PostMapping("/product")
    public String postMethodName(@RequestBody String entity) {
        // TODO: process POST request

        return entity;
    }

}
