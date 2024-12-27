package com.thomas.dao;

import com.thomas.dao.db.JDBIConnect;
import com.thomas.dao.model.Belts;
import org.jdbi.v3.core.Handle;

import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    public boolean createProduct(Belts belts) {
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


    public Belts getProduct(int id) {
        String sql = "SELECT * FROM belts WHERE id = :id ORDER BY id DESC";
        return JDBIConnect.get().withHandle(handle ->
                handle.createQuery(sql)
                        .bind("id", id)
                        .map((rs, ctx) -> {
                            Belts belts = new Belts();
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
                            return belts;
                        })
                        .one()
        );
    }


    public List<Belts> getAllProducts() {
        return JDBIConnect.get().withHandle(handle -> {
            String sql = "SELECT * FROM belts WHERE isDeleted=0 ORDER BY id DESC";
            List<Belts> belts = new ArrayList<>();
            try (Handle h = handle) {
                h.execute(sql);
                ResultSet rs = h.getConnection().createStatement().executeQuery(sql);
                while (rs.next()) {
                    Belts belt = new Belts();
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

    public Belts findById(int id) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "SELECT * FROM belts WHERE id = :id";
            return h.createQuery(sql).bind("id", id).mapToBean(Belts.class).findFirst().orElse(null);
        });
    }

    public boolean updateProduct(Belts belts) {
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

    public List<Belts> getRandomBelts() {
        return JDBIConnect.get().withHandle(handle -> {
            String sql = "SELECT * FROM belts ORDER BY RAND() LIMIT 4";
            List<Belts> belts = new ArrayList<>();
            try (Handle h = handle) {
                h.execute(sql);
                ResultSet rs = h.getConnection().createStatement().executeQuery(sql);
                while (rs.next()) {
                    Belts belt = new Belts();
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

    public void saveBeltView(int beltId) {
        JDBIConnect.get().withHandle(h -> {
            String sql = "INSERT INTO beltViews (beltId, viewDate, viewCount)" +
                    "VALUES (:beltId, CURDATE(), 1)" +
                    "ON DUPLICATE KEY UPDATE viewCount = viewCount + 1;";
            return h.createUpdate(sql).bind("beltId", beltId).execute() > 0;
        });
    }

    public List<Belts> getBeltsByViewCount() {
        return JDBIConnect.get().withHandle(handle -> {
            // SQL query to get the top 4 belts ordered by viewCount in descending order
            String sql = "SELECT b.* FROM belts b " +
                    "JOIN beltViews bv ON b.id = bv.beltId " +
                    "ORDER BY bv.viewCount DESC " +
                    "LIMIT 4";

            List<Belts> beltsList = new ArrayList<>();
            try (Handle h = handle) {
                ResultSet rs = h.getConnection().createStatement().executeQuery(sql);
                while (rs.next()) {
                    Belts belt = new Belts();
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
                    beltsList.add(belt);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return beltsList;
        });
    }

    public List<Belts> getNewArrivalProductsHotSelling() {
        return JDBIConnect.get().withHandle(handle -> {
            String sql = "SELECT " +
                    "    b.id AS beltId, " +
                    "    b.name AS beltName, " +
                    "    b.createdAt AS beltCreatedAt, " +
                    "    SUM(od.quantity) AS totalQuantitySold" +
                    "FROM " +
                    "    orderDetails od" +
                    "JOIN " +
                    "    orders o ON od.orderId = o.id" +
                    "JOIN " +
                    "    belts b ON od.beltId = b.id" +
                    "WHERE " +
                    "    o.isDeleted = 0" +
                    "GROUP BY " +
                    "    b.id, b.name, b.createdAt\n" +
                    "ORDER BY " +
                    "    totalQuantitySold DESC, b.createdAt DESC;";

            List<Belts> beltsList = new ArrayList<>();
            try (Handle h = handle) {
                ResultSet rs = h.getConnection().createStatement().executeQuery(sql);
                while (rs.next()) {
                    Belts belt = new Belts();
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
                    belt.setTotalQuantity(rs.getInt("totalQuantitySold"));
                    beltsList.add(belt);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return beltsList;
        });
    }

    public List<Belts> getNewArrivals() {
        return JDBIConnect.get().withHandle(handle -> {
            String sql = "SELECT b.id,b.name,b.price,i.imagePath,b.discountPercent " +
                    "FROM belts b " +
                    "INNER JOIN imageEntry i " +
                    "ON b.id = i.beltId " +
                    "WHERE b.isDeleted = 0 " +
                    "ORDER BY YEAR(b.releaseDate) " +
                    "DESC ";
            return handle.createQuery(sql).mapToBean(Belts.class).list();
        });
    }

    public List<Belts> getAllProductForDisplaying() {
        return JDBIConnect.get().withHandle(handle -> {
            String sql = "SELECT b.id,b.name,b.price,i.imagePath " +
                    "FROM belts b " +
                    "INNER JOIN imageEntry i " +
                    "ON b.id = i.beltId " +
                    "WHERE b.isDeleted = 0 " +
                    "ORDER BY b.id " +
                    "DESC";
            return handle.createQuery(sql).mapToBean(Belts.class).list();
        });
    }

    public List<Belts> getAscendByPrice() {
        return JDBIConnect.get().withHandle(handle -> {
            String sql = "SELECT b.id,b.name,b.price,i.imagePath " +
                    "FROM belts b " +
                    "INNER JOIN imageEntry i " +
                    "ON b.id = i.beltId " +
                    "WHERE b.isDeleted = 0 " +
                    "ORDER BY b.price " +
                    "ASC";
            return handle.createQuery(sql).mapToBean(Belts.class).list();
        });
    }

    public List<Belts> getDescendByPrice() {
        return JDBIConnect.get().withHandle(handle -> {
            String sql = "SELECT b.id,b.name,b.price,i.imagePath " +
                    "FROM belts b " +
                    "INNER JOIN imageEntry i " +
                    "ON b.id = i.beltId " +
                    "WHERE b.isDeleted = 0 " +
                    "ORDER BY b.price " +
                    "DESC";
            return handle.createQuery(sql).mapToBean(Belts.class).list();
        });
    }
}

