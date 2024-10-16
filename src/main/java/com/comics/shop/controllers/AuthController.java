package com.comics.shop.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.comics.shop.dto.UserDTO;
import com.comics.shop.models.User;
import com.comics.shop.services.UserService;

@RestController
@RequestMapping("/api/v1/auth")
@CrossOrigin(origins = "*")
public class AuthController {

    private final UserService userService;

    public AuthController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping("/register")
    public ResponseEntity<String> register(@RequestBody UserDTO userDto) {
        if (userService.existsByName(userDto.getName())) {
            return ResponseEntity.badRequest().body("Username already exists");
        }
        userService.registerUser(userDto);
        return ResponseEntity.ok("User registered successfully");
    }

    @PostMapping("/login")
    public ResponseEntity<String> authenticate(@RequestBody UserDTO userDTO) {
        User loggedUser = userService.findUserByName(userDTO.getName());
        if (userService.checkPassword(userDTO.getPassword(), loggedUser.getPassword())) {
            return ResponseEntity.ok("Logged in");
        }
        return ResponseEntity.badRequest().body("Wrong credentials");
    }
}
