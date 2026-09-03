package com.portfolio;

public class PortfolioApp {
    public static void main(String[] args) {
        System.out.println("Portfolio Application - Yash Patel (23070122235)");
        PortfolioService service = new PortfolioService();
        service.addProject("Dockerized Pipeline");
        service.addProject("Angular Container");
        service.addProject("Distributed Jenkins");
        System.out.println("Total Projects: " + service.getCount());
    }
}
