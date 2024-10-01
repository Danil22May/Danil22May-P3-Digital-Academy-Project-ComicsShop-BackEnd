package com.comics.shop.configs;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;

import javax.annotation.PostConstruct;
import java.io.FileInputStream;
import java.io.IOException;

@Configuration
public class FirebaseConfig {

    @PostConstruct
    public void initialize() throws IOException {
        // FileInputStream serviceAccount = new FileInputStream("secret.json");
        ClassPathResource resource = new ClassPathResource("secret.json");
        FirebaseOptions options = new FirebaseOptions.Builder()
                .setCredentials(GoogleCredentials.fromStream(resource.getInputStream()))
                .setStorageBucket("comics-shop-7f554.appspot.com")
                .build();

        FirebaseApp.initializeApp(options);
    }
}
