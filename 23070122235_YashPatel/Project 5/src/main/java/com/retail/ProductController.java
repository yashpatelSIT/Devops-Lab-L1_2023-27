package com.retail;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.*;

@RestController
@RequestMapping("/api/products")
public class ProductController {

    @GetMapping
    public Map<String, Object> getProducts() {
        Map<String, Object> response = new HashMap<>();
        response.put("store", "Retail Web App");
        response.put("developer", "Yash Patel");
        response.put("prn", "23070122235");
        response.put("products", Arrays.asList(
            Map.of("id", 1, "name", "Laptop", "price", 65000),
            Map.of("id", 2, "name", "Wireless Mouse", "price", 1200),
            Map.of("id", 3, "name", "Keyboard", "price", 2500)
        ));
        return response;
    }
}
