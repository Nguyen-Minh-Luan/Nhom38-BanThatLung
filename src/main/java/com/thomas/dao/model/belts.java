package com.thomas.dao.model;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

public class belts implements Serializable {
    private int id;
    private String name;
    private String description;
    private double price;
    private String gender;
    private int stockQuantity;
    private LocalDate releaseDate;
    private LocalDate createdDate;
    private LocalDate updatedDate;
    private int isDeleted;
    private double discountPercent;
    private String materialBelt;
    private List<String> image;

    public belts() {

    }

    public belts(int id, String name, String description, double price, String gender, int stockQuantity, LocalDate releaseDate, LocalDate createdDate, LocalDate updatedDate, int isDeleted, double discountPercent, String materialBelt) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.gender = gender;
        this.stockQuantity = stockQuantity;
        this.releaseDate = releaseDate;
        this.createdDate = createdDate;
        this.updatedDate = updatedDate;
        this.isDeleted = isDeleted;
        this.discountPercent = discountPercent;
        this.materialBelt = materialBelt;

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

    public LocalDate getCreatedDate() {
        return createdDate;
    }

    public void setCreateDate(LocalDate createDate) {
        this.createdDate = createDate;
    }

    public LocalDate getUpdatedDate() {
        return updatedDate;
    }

    public void setUpdatedDate(LocalDate updateDate) {
        this.updatedDate = updateDate;
    }

    public int getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(int isDeleted) {
        this.isDeleted = isDeleted;
    }

    public double getDiscountPercent() {
        return discountPercent;
    }

    public void setDiscountPercent(double discountPercent) {
        this.discountPercent = discountPercent;
    }

    public String getMaterialBelt() {
        return materialBelt;
    }

    public void setMaterialBelt(String materialBelt) {
        this.materialBelt = materialBelt;
    }

    public String getFormattedCreateDate() {
        return createdDate.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
    }

    public String getFormattedReleaseDate() {
        return releaseDate.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
    }

    public String getFormattedUpdateDate() {
        return updatedDate.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
    }

    public List<String> getImage() {
        return image;
    }

    public void setImage(List<String> image) {
        this.image = image;
    }
}
