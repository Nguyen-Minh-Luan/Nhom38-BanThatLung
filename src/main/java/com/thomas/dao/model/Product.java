package com.thomas.dao.model;

import java.io.Serializable;
import java.time.LocalDate;

public class Product implements Serializable {
    private int id;
    private int categoryId;
    private String name;
    private String description;
    private double price;
    private String gender;
    private int stockQuantity;
    private LocalDate releaseDate;
    private LocalDate createDate;
    private LocalDate updateDate;
    private int isDeleted;
    private double discount;
    private String materialBelt;
    public Product() {

    }
    public Product(int categoryId,String name,String description,double price,String gender,int stockQuantity,LocalDate createDate,LocalDate releaseDate,String materialBelt) {
        this.categoryId = categoryId;
        this.name = name;
        this.description = description;
        this.price = price;
        this.gender = gender;
        this.stockQuantity = stockQuantity;
        this.createDate = createDate;
        this.updateDate = releaseDate;
        this.isDeleted = 0;
        this.discount = 0;
        this.materialBelt = materialBelt;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public int getCategoryId() {
        return categoryId;
    }
    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public double getPrice() {
        return price;
    }
    public void setPrice(double price) {
        this.price = price;
    }
    public String getGender() {
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
    public int getStockQuantity() {
        return stockQuantity;
    }
    public void setStockQuantity(int stockQuantity) {
        this.stockQuantity = stockQuantity;
    }
    public LocalDate getReleaseDate() {
        return releaseDate;
    }
    public void setReleaseDate(LocalDate releaseDate) {
        this.releaseDate = releaseDate;
    }
    public LocalDate getCreateDate() {
        return createDate;
    }
    public void setCreateDate(LocalDate createDate) {
        this.createDate = createDate;
    }
    public LocalDate getUpdateDate() {
        return updateDate;
    }
    public void setUpdateDate(LocalDate updateDate) {
        this.updateDate = updateDate;
    }
    public int getIsDeleted() {
        return isDeleted;
    }
    public void setIsDeleted(int isDeleted) {
        this.isDeleted = isDeleted;
    }
    public double getDiscount() {
        return discount;
    }
    public void setDiscount(double discount) {
        this.discount = discount;
    }
    public String getMaterialBelt() {
        return materialBelt;
    }
    public void setMaterialBelt(String materialBelt) {
        this.materialBelt = materialBelt;
    }


}
