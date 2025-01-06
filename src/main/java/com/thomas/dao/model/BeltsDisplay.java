package com.thomas.dao.model;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

public class BeltsDisplay implements Serializable {
    private String imagePath;
    private int id;
    private String name;
    private double price;
    private int quantity;

    public BeltsDisplay() {
    }

    public BeltsDisplay(String imagePath, int id, String name, double price, int quantity) {
        this.imagePath = imagePath;
        this.id = id;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}