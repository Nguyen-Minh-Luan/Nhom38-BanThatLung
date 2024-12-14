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
            String sql = "INSERT INTO belts ( name, releaseDate, gender, price,stockQuantity ,materialBelt,isDeleted) VALUES (:productName,:description,:releaseDate,:gender,:price,:stockQuantity,:material,:isDeleted)";
            return h.createUpdate(sql).bind("productName", product.getName())
                    .bind("releaseDate", product.getReleaseDate())
                    .bind("gender", product.getGender())
                    .bind("price", product.getPrice())
                    .bind("stockQuantity", product.getStockQuantity())
                    .bind("material", product.getMaterialBelt())
                    .bind("isDeleted", product.getIsDeleted())
                    .execute() > 0;
        });
    }

    public String[] getTags(int beltId) {
        return JDBIConnect.get().withHandle(handle -> {
            // Execute the query to fetch category names
            List<String> categories = handle.createQuery(
                            "SELECT c.name " +
                                    "FROM beltCategory bc " +
                                    "JOIN categories c ON bc.categoryId = c.id " +
                                    "WHERE bc.beltId = :beltId"
                    )
                    .bind("beltId", beltId)
                    .mapTo(String.class)
                    .list();

            // Convert the list to an array and return
            return categories.toArray(new String[0]);
        });
    }


    public String[] getProductImages(int beltId) {
        return JDBIConnect.get().withHandle(handle -> {
            List<String> imagePaths = handle.createQuery(
                            "SELECT imagePath FROM imageEntry WHERE beltId = :beltId AND imageType IN ('main', 'extra')")
                    .bind("beltId", beltId)
                    .mapTo(String.class)
                    .list();

            return imagePaths.toArray(new String[0]);
        });
    }

    public void saveDesc(int beltId, String desc) {
        JDBIConnect.get().withHandle(h -> {
            String sql = "UPDATE belts SET description = :desc WHERE id = :beltId";
            return h.createUpdate(sql)
                    .bind("beltId", beltId)
                    .bind("desc", desc)
                    .execute() > 0;
        });
    }


    public Product getProduct(int id) {
        Product product = new Product();
        return JDBIConnect.get().withHandle(handle -> {
            String sql = "SELECT * FROM belts ORDER BY id DESC";
            try (Handle h = handle) {
                h.execute(sql);
                ResultSet rs = h.getConnection().createStatement().executeQuery(sql);
                while (rs.next()) {
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
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return product;
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
                    "releaseDate = :releaseDate, " +
                    "gender = :gender, " +
                    "price = :price, " +
                    "stockQuantity = :stockQuantity, " +
                    "materialBelt = :material, " +
                    "isDeleted = :isDeleted " +
                    "WHERE id = :id";

            return h.createUpdate(sql)
                    .bind("productName", product.getName())
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

    public boolean deleteProductById(int id) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "DELETE FROM belts WHERE id = :id";
            return h.createUpdate(sql).bind("id", id).execute() > 0;
        });
    }

    public void saveImage(int beltId, String imageType, String imagePath) {
        JDBIConnect.get().useHandle(handle -> {
            String sql = "INSERT INTO imageEntry (beltId, imageType, imagePath) " +
                    "VALUES (:beltId, :imageType, :imagePath)";
            handle.createUpdate(sql)
                    .bind("beltId", beltId)
                    .bind("imageType", imageType)  // 'main', 'extra', or 'description'
                    .bind("imagePath", imagePath)
                    .execute();
        });
    }


    public void updateImage(int beltId, String imageType, String imagePath) {
        JDBIConnect.get().useHandle(handle -> {
            String sql = "UPDATE imageEntry SET imagePath = :imagePath " +
                    "WHERE beltId = :beltId AND imageType = :imageType";
            handle.createUpdate(sql)
                    .bind("beltId", beltId)
                    .bind("imageType", imageType)  // 'main', 'extra', or 'description'
                    .bind("imagePath", imagePath)
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
