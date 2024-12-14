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

    public String[] getProductImages(int beltId) {
        return productDao.getProductImages(beltId);

    }

    public String[] getTags(int beltId) {
        return productDao.getTags(beltId);
    }

    public void saveDesc(int beltId, String description) {
        productDao.saveDesc(beltId, description);
    }

    public void saveProduct(String productName, String[] tags, double discountPercent, LocalDate releaseDate, String gender, double price, int stockQuantity, String material, int isDeleted) {

        Product product = new Product();
        product.setName(productName);
        product.setPrice(price);
        product.setReleaseDate(releaseDate);
        product.setGender(gender);
        product.setStockQuantity(stockQuantity);
        product.setMaterialBelt(material);
        product.setIsDeleted(isDeleted);
        product.setDiscountPercent(discountPercent);
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

    public Product getProductById(int productId) {
        return productDao.getProduct(productId);
    }

    public void updateProduct(int id, String productName, String[] tags, double discountPercent, LocalDate releaseDate, String gender, double price, int stockQuantity, String material, int isDeleted) {
        Product product = productDao.findById(id);
        product.setName(productName);
        product.setPrice(price);
        product.setReleaseDate(releaseDate);
        product.setGender(gender);
        product.setStockQuantity(stockQuantity);
        product.setMaterialBelt(material);
        product.setDiscountPercent(discountPercent);
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

        productDao.updateProduct(product);
    }

    public boolean deleteProduct(int productId) {
        return productDao.deleteProductById(productId);
    }

    public void saveImagePath(int beltId, String filePath, List<String> extraImages) {
        if (extraImages != null && !extraImages.isEmpty()) {
            // Save the main image
            productDao.saveImage(beltId, "main", filePath);

            // Save extra images
            for (String extraImage : extraImages) {
                productDao.saveImage(beltId, "extra", extraImage);
            }
        }
    }

    public void saveDescImg(int beltId, List<String> filePaths) {
        for (String descImg : filePaths) {
            productDao.saveImage(beltId, "description", descImg);
        }
    }

    public int getLatestProductId() {
        return productDao.getLatestProductId();
    }

    public void updateImagePath(int beltId, String filePath, List<String> extraImages) {
        if (extraImages != null && !extraImages.isEmpty()) {
            // Update the main image
            productDao.updateImage(beltId, "main", filePath);

            // Update extra images
            for (String extraImage : extraImages) {
                productDao.updateImage(beltId, "extra", extraImage);
            }

        }

    }

}
