package com.comics.shop.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.comics.shop.models.Category;
import com.comics.shop.models.Product;
import com.comics.shop.services.ProductService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

@RestController
@RequestMapping("/api/v1")
@CrossOrigin(origins = "*")
public class ProductController {
    @Autowired
    private ProductService productService;

    @GetMapping("/products")
    public Page<Product> getAllProducts(
            @RequestParam(name = "page", required = true) int page,
            @RequestParam(name = "limit", required = true) int limit) {
        return productService.getAllProducts(page, limit);
    }

    @GetMapping("/product")
    public Product getProductById(@RequestParam(name = "id", required = true) Long id) {
        return productService.getProductById(id);
    }

    @PostMapping("/product")
    public Product postProduct(@RequestBody Product product) {
        return productService.createProduct(product);
    }

    @PutMapping("/product")
    public Product editProduct(@RequestParam Long id, @RequestBody Product product) {
        Product editedProduct = productService.getProductById(id);
        editedProduct.setName(product.getName());
        editedProduct.setCategory(product.getCategory());
        editedProduct.setStars(product.getStars());
        editedProduct.setDescription(product.getDescription());
        editedProduct.setImageUrl1(product.getImageUrl1());
        editedProduct.setImageUrl2(product.getImageUrl2());
        return editedProduct;
    }

    @DeleteMapping("/product")
    public ResponseEntity<Void> deleteProduct(@RequestParam Long id) {
        try {
            productService.deleteById(id);
            return ResponseEntity.ok().body(null);
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(null);
        }
    }

    @GetMapping("/product/category")
    public Page<Product> getByCategory(@RequestParam("category") String category,
            @RequestParam(name = "page", required = true) int page,
            @RequestParam(name = "limit", required = true) int limit) {
        System.out.println("Received request: category = " + category + ", page = " + page + ", limit = " + limit);
        Category categoryEnum = Category.valueOf(category.toUpperCase());
        return productService.getProductsByCategory(categoryEnum, page, limit);
    }

}
