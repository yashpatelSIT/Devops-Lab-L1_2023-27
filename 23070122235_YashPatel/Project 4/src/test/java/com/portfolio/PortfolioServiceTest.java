package com.portfolio;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class PortfolioServiceTest {

    @Test
    public void testAddProject() {
        PortfolioService service = new PortfolioService();
        service.addProject("Docker Project");
        assertEquals(1, service.getCount());
        assertTrue(service.hasProject("Docker Project"));
    }

    @Test
    public void testEmptyList() {
        PortfolioService service = new PortfolioService();
        assertEquals(0, service.getCount());
    }
}
