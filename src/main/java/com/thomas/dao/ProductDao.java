package com.thomas.dao;

import com.thomas.dao.db.JDBIConnect;
import com.thomas.dao.model.Product;
import org.jdbi.v3.core.Handle;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    public boolean createProduct(Product product) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "INSERT INTO belts ( name, description, releaseDate, gender, price,stockQuantity ,materialBelt,isDeleted) VALUES (:productName,:description,:releaseDate,:gender,:price,:stockQuantity,:material,:isDeleted)";
            return h.createUpdate(sql).bind("productName", product.getName())
                    .bind("description", product.getDescription())
                    .bind("releaseDate", product.getReleaseDate())
                    .bind("gender", product.getGender())
                    .bind("price", product.getPrice())
                    .bind("stockQuantity", product.getStockQuantity())
                    .bind("material", product.getMaterialBelt())
                    .bind("isDeleted", product.getIsDeleted())
                    .execute() > 0;
        });
    }

    public List<Product> getAllProducts() {
        return JDBIConnect.get().withHandle(handle -> {
            String sql = "SELECT * FROM belts ORDER BY id DESC";
            List<Product> products = new ArrayList<>();
            try (Handle h = handle) {
                h.execute(sql);
                ResultSet rs = h.getConnection().createStatement().executeQuery(sql);
                while (rs.next()) {
                    Product product = new Product();
                    product.setId(rs.getInt("id"));
                    product.setName(rs.getString("name"));
                    product.setDescription(rs.getString("description"));
                    product.setPrice(rs.getDouble("price"));
                    product.setGender(rs.getString("gender"));
                    product.setStockQuantity(rs.getInt("stockQuantity"));
                    product.setReleaseDate(rs.getDate("releaseDate").toLocalDate());
                    product.setCreateDate(rs.getDate("createdAt").toLocalDate());
                    product.setUpdatedDate(rs.getDate("updatedAt").toLocalDate());
                    product.setIsDeleted(rs.getInt("isDeleted"));
                    product.setDiscountPercent(rs.getDouble("discountPercent"));
                    product.setMaterialBelt(rs.getString("materialBelt"));
                    product.setIsDeleted(rs.getInt("isDeleted"));
                    products.add(product);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return products;
        });
    }

    public Product findById(int id) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "SELECT * FROM belts WHERE id = :id";
            return h.createQuery(sql).bind("id", id).mapToBean(Product.class).findFirst().orElse(null);
        });
    }

    public boolean updateProduct(Product product) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "UPDATE belts SET name = :productName, " +
                    "description = :description, " +
                    "releaseDate = :releaseDate, " +
                    "gender = :gender, " +
                    "price = :price, " +
                    "stockQuantity = :stockQuantity, " +
                    "materialBelt = :material " +
                    "isDeleted = :isDeleted " +
                    "WHERE id = :id";

            return h.createUpdate(sql)
                    .bind("productName", product.getName())
                    .bind("description", product.getDescription())
                    .bind("releaseDate", product.getReleaseDate())
                    .bind("gender", product.getGender())
                    .bind("price", product.getPrice())
                    .bind("stockQuantity", product.getStockQuantity())
                    .bind("material", product.getMaterialBelt())
                    .bind("id", product.getId())
                    .bind("isDeleted", product.getIsDeleted())
                    .execute() > 0;
        });
    }

    public void saveImage(int beltId, String mainImage, String... extraImages) {
        JDBIConnect.get().useHandle(handle -> {
            String sql = "INSERT INTO imageEntry (beltId, mainImage, extraImage1, extraImage2, extraImage3, extraImage4) " +
                    "VALUES (:beltId, :mainImage, :extraImage1, :extraImage2, :extraImage3, :extraImage4)";
            handle.createUpdate(sql)
                    .bind("beltId", beltId)
                    .bind("mainImage", mainImage)
                    .bind("extraImage1", extraImages.length > 0 ? extraImages[0] : null)
                    .bind("extraImage2", extraImages.length > 1 ? extraImages[1] : null)
                    .bind("extraImage3", extraImages.length > 2 ? extraImages[2] : null)
                    .bind("extraImage4", extraImages.length > 3 ? extraImages[3] : null)
                    .execute();
        });
    }

    public void updateImage(int beltId, String mainImage, String... extraImages) {
        JDBIConnect.get().useHandle(handle -> {
            String sql = "UPDATE imageEntry SET mainImage = :mainImage, " +
                    "extraImage1 = :extraImage1, " +
                    "extraImage2 = :extraImage2, " +
                    "extraImage3 = :extraImage3, " +
                    "extraImage4 = :extraImage4 " +
                    "WHERE beltId = :beltId";
            handle.createUpdate(sql)
                    .bind("beltId", beltId)
                    .bind("mainImage", mainImage)
                    .bind("extraImage1", extraImages.length > 0 ? extraImages[0] : null)
                    .bind("extraImage2", extraImages.length > 1 ? extraImages[1] : null)
                    .bind("extraImage3", extraImages.length > 2 ? extraImages[2] : null)
                    .bind("extraImage4", extraImages.length > 3 ? extraImages[3] : null)
                    .execute();
        });
    }


    public int getLatestProductId() {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "SELECT id FROM belts ORDER BY id DESC LIMIT 1";
            return h.createQuery(sql).mapTo(Integer.class).findFirst().orElse(0);
        });
    }
}
