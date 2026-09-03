package com.portfolio;

import java.util.ArrayList;
import java.util.List;

public class PortfolioService {
    private final List<String> projects = new ArrayList<>();

    public void addProject(String name) {
        if (name != null && !name.trim().isEmpty()) {
            projects.add(name);
        }
    }

    public int getCount() {
        return projects.size();
    }

    public boolean hasProject(String name) {
        return projects.contains(name);
    }
}
