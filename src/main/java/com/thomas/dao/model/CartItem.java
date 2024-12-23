package com.thomas.dao.model;

public class CartItem {
    private belts belt;
    private int quantity;
    private double price;

    public CartItem(belts belt, int quantity, double price) {
        this.belt = belt;
        this.quantity = quantity;
        this.price = price;
    }

    public belts getBelt() {
        return belt;
    }

    public void setBelt(belts belt) {
        this.belt = belt;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
