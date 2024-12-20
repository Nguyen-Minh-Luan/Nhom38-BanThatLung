package com.thomas.dao;

import com.thomas.dao.db.JDBIConnect;
import com.thomas.dao.model.belts;
import org.jdbi.v3.core.Handle;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    public boolean createProduct(belts belts) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "INSERT INTO belts ( name, releaseDate, gender, price,stockQuantity ,materialBelt,isDeleted) VALUES (:productName,:releaseDate,:gender,:price,:stockQuantity,:material,:isDeleted)";
            return h.createUpdate(sql).bind("productName", belts.getName())
                    .bind("releaseDate", belts.getReleaseDate())
                    .bind("gender", belts.getGender())
                    .bind("price", belts.getPrice())
                    .bind("stockQuantity", belts.getStockQuantity())
                    .bind("material", belts.getMaterialBelt())
                    .bind("isDeleted", belts.getIsDeleted())
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


    public List<String> getProductImages(int beltId) {
        return JDBIConnect.get().withHandle(handle ->
                handle.createQuery(
                                "SELECT imagePath FROM imageEntry WHERE beltId = :beltId AND imageType IN ('main', 'extra')")
                        .bind("beltId", beltId)
                        .mapTo(String.class)
                        .list()
        );
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


    public belts getProduct(int id) {
        belts belts = new belts();
        return JDBIConnect.get().withHandle(handle -> {
            String sql = "SELECT * FROM belts ORDER BY id DESC";
            try (Handle h = handle) {
                ResultSet rs = h.getConnection().createStatement().executeQuery(sql);
                while (rs.next()) {
                    belts.setId(rs.getInt("id"));
                    belts.setName(rs.getString("name"));
                    belts.setDescription(rs.getString("description"));
                    belts.setPrice(rs.getDouble("price"));
                    belts.setGender(rs.getString("gender"));
                    belts.setStockQuantity(rs.getInt("stockQuantity"));
                    belts.setReleaseDate(rs.getDate("releaseDate").toLocalDate());
                    belts.setCreateDate(rs.getDate("createdAt").toLocalDate());
                    belts.setUpdatedDate(rs.getDate("updatedAt").toLocalDate());
                    belts.setIsDeleted(rs.getInt("isDeleted"));
                    belts.setDiscountPercent(rs.getDouble("discountPercent"));
                    belts.setMaterialBelt(rs.getString("materialBelt"));
                    belts.setIsDeleted(rs.getInt("isDeleted"));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return belts;
        });
    }

    public List<belts> getAllProducts() {
        return JDBIConnect.get().withHandle(handle -> {
            String sql = "SELECT * FROM belts ORDER BY id DESC";
            List<belts> belts = new ArrayList<>();
            try (Handle h = handle) {
                h.execute(sql);
                ResultSet rs = h.getConnection().createStatement().executeQuery(sql);
                while (rs.next()) {
                    com.thomas.dao.model.belts belt = new belts();
                    belt.setId(rs.getInt("id"));
                    belt.setName(rs.getString("name"));
                    belt.setDescription(rs.getString("description"));
                    belt.setPrice(rs.getDouble("price"));
                    belt.setGender(rs.getString("gender"));
                    belt.setStockQuantity(rs.getInt("stockQuantity"));
                    belt.setReleaseDate(rs.getDate("releaseDate").toLocalDate());
                    belt.setCreateDate(rs.getDate("createdAt").toLocalDate());
                    belt.setUpdatedDate(rs.getDate("updatedAt").toLocalDate());
                    belt.setIsDeleted(rs.getInt("isDeleted"));
                    belt.setDiscountPercent(rs.getDouble("discountPercent"));
                    belt.setMaterialBelt(rs.getString("materialBelt"));
                    belt.setIsDeleted(rs.getInt("isDeleted"));
                    belts.add(belt);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return belts;
        });
    }

    public belts findById(int id) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "SELECT * FROM belts WHERE id = :id";
            return h.createQuery(sql).bind("id", id).mapToBean(belts.class).findFirst().orElse(null);
        });
    }

    public boolean updateProduct(belts belts) {
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
                    .bind("productName", belts.getName())
                    .bind("releaseDate", belts.getReleaseDate())
                    .bind("gender", belts.getGender())
                    .bind("price", belts.getPrice())
                    .bind("stockQuantity", belts.getStockQuantity())
                    .bind("material", belts.getMaterialBelt())
                    .bind("id", belts.getId())
                    .bind("isDeleted", belts.getIsDeleted())
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

    public List<String> getDescImage(int beltId) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "SELECT imagePath from imageEntry where beltId = :beltId AND imageType = 'description'";
            return h.createQuery(sql).bind("beltId", beltId).mapTo(String.class).list();
        });
    }
}
