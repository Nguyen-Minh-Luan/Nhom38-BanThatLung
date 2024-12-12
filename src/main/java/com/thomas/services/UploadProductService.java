package com.thomas.services;

import com.thomas.dao.BeltCategoryDao;
import com.thomas.dao.CategoryDao;
import com.thomas.dao.ProductDao;
import com.thomas.dao.db.JDBIConnect;
import com.thomas.dao.model.BeltCategory;
import com.thomas.dao.model.Category;
import com.thomas.dao.model.Product;

import java.time.LocalDate;
import java.util.List;

public class UploadProductService {
    ProductDao productDao;
    CategoryDao categoryDao;
    BeltCategoryDao beltCategoryDao;

    public UploadProductService() {
        productDao = new ProductDao();
        categoryDao = new CategoryDao();
        beltCategoryDao = new BeltCategoryDao();
    }

    public List<Product> getProducts() {
        return productDao.getAllProducts();
    }

    public void saveProduct(String productName, String[] tags, String description, LocalDate releaseDate, String gender, double price, int stockQuantity, String material, int isDeleted) {

        Product product = new Product();
        product.setName(productName);
        product.setDescription(description);
        product.setPrice(price);
        product.setReleaseDate(releaseDate);
        product.setGender(gender);
        product.setStockQuantity(stockQuantity);
        product.setMaterialBelt(material);
        product.setIsDeleted(isDeleted);
        boolean isCreated = productDao.createProduct(product);
        int id = 0;
        if (isCreated) {
            id = productDao.getLatestProductId();
        }


        for (String tag : tags) {
            Category category = getOrCreateCategory(tag);
            if (category != null) {
                getOrCreateBeltCategory(id, category.getId());
            }
        }
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

    public BeltCategory getOrCreateBeltCategory(int beltId, int categoryId) {
        BeltCategory bc = beltCategoryDao.getBeltCategory(beltId, categoryId);
        if (bc == null) {
            if (!beltCategoryDao.createBeltCategory(beltId, categoryId)) {
                throw new RuntimeException("Failed to create or retrieve category: " + beltId + " " + categoryId);
            }
            bc = beltCategoryDao.getBeltCategory(beltId, categoryId);
        }
        return bc;
    }

    public void updateProduct(int id, String productName, String[] tags, String description, LocalDate releaseDate, String gender, double price, int stockQuantity, String material, int isDeleted) {
        Product product = productDao.findById(id);
        product.setDescription(description);
        product.setPrice(price);
        product.setReleaseDate(releaseDate);
        product.setGender(gender);
        product.setStockQuantity(stockQuantity);
        product.setMaterialBelt(material);
        product.setIsDeleted(isDeleted);
        int beltId = productDao.findById(product.getId()).getId();
        if (beltId <= 0) {
            return;
        }

        for (String tag : tags) {
            Category category = getOrCreateCategory(tag);
            if (category != null) {
                getOrCreateBeltCategory(beltId, category.getId());
            }
        }

        productDao.createProduct(product);
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
