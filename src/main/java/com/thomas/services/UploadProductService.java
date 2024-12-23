package com.thomas.services;

import com.thomas.dao.BeltCategoryDao;
import com.thomas.dao.CategoryDao;
import com.thomas.dao.ProductDao;
import com.thomas.dao.model.BeltCategory;
import com.thomas.dao.model.belts;
import com.thomas.dao.model.Category;

import java.time.LocalDate;
import java.util.Collections;
import java.util.Comparator;
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

    public List<belts> getProducts() {
        return productDao.getAllProducts();
    }

    public List<String> getProductImages(int beltId) {
        return productDao.getProductImages(beltId);

    }

    public String[] getTags(int beltId) {
        return productDao.getTags(beltId);
    }

    public void saveDesc(int beltId, String description) {
        productDao.saveDesc(beltId, description);
    }

    public void saveProduct(String productName, String[] tags, double discountPercent, LocalDate releaseDate, String gender, double price, int stockQuantity, String material, int isDeleted) {

        belts belts = new belts();
        belts.setName(productName);
        belts.setPrice(price);
        belts.setReleaseDate(releaseDate);
        belts.setGender(gender);
        belts.setStockQuantity(stockQuantity);
        belts.setMaterialBelt(material);
        belts.setIsDeleted(isDeleted);
        belts.setDiscountPercent(discountPercent);
        boolean isCreated = productDao.createProduct(belts);
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

    public belts getProductById(int productId) {
        return productDao.getProduct(productId);
    }

    public void updateProduct(int id, String productName, String[] tags, double discountPercent, LocalDate releaseDate, String gender, double price, int stockQuantity, String material, int isDeleted) {
        belts belts = productDao.findById(id);
        belts.setName(productName);
        belts.setPrice(price);
        belts.setReleaseDate(releaseDate);
        belts.setGender(gender);
        belts.setStockQuantity(stockQuantity);
        belts.setMaterialBelt(material);
        belts.setDiscountPercent(discountPercent);
        belts.setIsDeleted(isDeleted);
        int beltId = productDao.findById(belts.getId()).getId();
        if (beltId <= 0) {
            return;
        }

        for (String tag : tags) {
            Category category = getOrCreateCategory(tag);
            if (category != null) {
                getOrCreateBeltCategory(beltId, category.getId());
            }
        }

        productDao.updateProduct(belts);
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

    public List<belts> getNewArrivalProducts() {
        List<belts> newArrivalBelts = productDao.getAllProducts();
        for (belts belt : newArrivalBelts) {
            belt.setImage(productDao.getProductImages(belt.getId()));

        }
        Collections.sort(newArrivalBelts, new Comparator<belts>() {
            @Override
            public int compare(belts o1, belts o2) {
                return o1.getCreatedDate().compareTo(o2.getCreatedDate());
            }
        });
        return newArrivalBelts;
    }

    public List<Category> getAllCategoriesById(int beltId) {
        return beltCategoryDao.getCategoriesByBeltIdAndCategoryId(beltId);
    }

    public List<String> getAllDescImage(int beltId) {
        return productDao.getDescImage(beltId);
    }

    public List<belts> getRandomBelts() {
        return productDao.getRandomBelts();
    }

    public void saveBeltView(int beltId) {
        productDao.saveBeltView(beltId);
    }

    public List<belts> getBeltByViewCount() {
        return productDao.getBeltsByViewCount();
    }

    public List<belts> getNewArrivalProductsHotSeliing() {
        return productDao.getNewArrivalProductsHotSelling();
    }
}
