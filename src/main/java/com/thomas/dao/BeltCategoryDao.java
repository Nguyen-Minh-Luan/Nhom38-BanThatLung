package com.thomas.dao;

import com.thomas.dao.db.JDBIConnect;
import com.thomas.dao.model.BeltCategory;

public class BeltCategoryDao {
    public boolean createBeltCategory(int productId, int categoryId) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "INSERT INTO beltCategory(beltId,categoryId) VALUES(:beltId,:categoryId)";
            return h.createUpdate(sql).bind("beltId", productId).bind("categoryId", categoryId).execute() > 0;
        });
    }

    public BeltCategory getBeltCategory(int beltId, int categoryId) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "SELECT * FROM beltCategory WHERE beltId = :beltId AND categoryId = :categoryId";
            return h.createQuery(sql).bind("beltId", beltId).bind("categoryId", categoryId).mapToBean(BeltCategory.class).findFirst().orElse(null);
        });
    }
}
