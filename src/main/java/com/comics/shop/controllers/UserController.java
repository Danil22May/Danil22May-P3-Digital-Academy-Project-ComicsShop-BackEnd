package com.comics.shop.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import com.comics.shop.services.UserService;
import com.comics.shop.models.User;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.PathVariable;

@RestController
@CrossOrigin(origins = "*")
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/users")
    public List<User> getUsers() {
        return userService.getAllUsers();
    }

    @PostMapping("/user")
    public User newUser(@RequestBody User user) {
        return userService.createUser(user);
    }

    @PutMapping("/user/{id}")
    public User editUser(@PathVariable Long id, @RequestBody User user) {
        User updateUser = userService.getUserById(id).orElseThrow();
        updateUser.setAdmin(user.isAdmin());
        updateUser.setName(user.getName());
        return updateUser;
    }

    @GetMapping("/user/{id}")
    public User getOneUser(@PathVariable Long id) {
        return userService.getUserById(id).orElseThrow();
    }

    @DeleteMapping("/user/{id}")
    public ResponseEntity<Void> deleteUser(@PathVariable Long id) {
        try {
            userService.deleteUser(id);
            return ResponseEntity.ok().body(null);
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(null);
        }
    }

}
