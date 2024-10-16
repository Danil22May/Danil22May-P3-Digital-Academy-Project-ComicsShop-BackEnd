package com.comics.shop.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.comics.shop.models.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    boolean existsByName(String username);

    User findByName(String name);
}
