package com.thomas.services;

import com.thomas.dao.CategoryDao;
import com.thomas.dao.ProductDao;
import com.thomas.dao.db.JDBIConnect;
import com.thomas.dao.model.Category;
import com.thomas.dao.model.Product;

import java.time.LocalDate;
import java.util.List;

public class UploadProductService {
    ProductDao productDao;
    CategoryDao categoryDao;

    public UploadProductService() {
        productDao = new ProductDao();
        categoryDao = new CategoryDao();
    }

    public boolean saveProduct(String productName, String tags, String description, LocalDate releaseDate, String gender, double price, int stockQuantity, String material) {
        Category category = getOrCreateCategory(tags);
        Product product = new Product();
        product.setName(productName);
        product.setDescription(description);
        product.setCategoryId(category.getId());
        product.setPrice(price);
        product.setReleaseDate(releaseDate);
        product.setGender(gender);
        product.setStockQuantity(stockQuantity);
        product.setMaterialBelt(material);
        return productDao.createProduct(product);
    }

    public Category getOrCreateCategory(String tag) {
        Category category = categoryDao.getCategory(tag);
        if (category == null) {
            if (!categoryDao.createCategory(tag)) {
                throw new RuntimeException("Failed to create or retrieve category: " + tag);
            }
            category = categoryDao.getCategory(tag);
        }
        return category;
    }
    public void updateProduct(int id, String productName, String tags, String description, LocalDate releaseDate, String gender, double price, int stockQuantity, String material) {
        Category category = getOrCreateCategory(tags);
        Product product = productDao.findById(id);
        product.setDescription(description);
        product.setCategoryId(category.getId());
        product.setPrice(price);
        product.setReleaseDate(releaseDate);
        product.setGender(gender);
        product.setStockQuantity(stockQuantity);
        product.setMaterialBelt(material);
        productDao.updateProduct(product);
    }

    public void saveImagePath(int beltId, String filePath, List<String> extraImages) {
        String mainImage = filePath;
        String[] extraImagePaths = extraImages.toArray(new String[0]);
        productDao.saveImage(beltId, mainImage, extraImagePaths);
    }


    public int getLatestProductId() {
        return productDao.getLatestProductId();
    }

    public void updateImagePath(int productId, String filePath, List<String> extraImages) {
        String mainImage = filePath;
        String[] extraImagePaths = extraImages.toArray(new String[0]);
        productDao.updateImage(productId, mainImage, extraImagePaths);
    }
}
