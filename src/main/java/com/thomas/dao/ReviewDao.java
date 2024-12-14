package com.thomas.dao;

import com.thomas.dao.db.JDBIConnect;
import com.thomas.dao.model.Review;
import org.jdbi.v3.core.Handle;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ReviewDao {
    public List<Review> getReviews() {
        return JDBIConnect.get().withHandle(handle -> {
            String sql = "select * from reviews";
            List<Review> reviews = new ArrayList<>();
            try (Handle h = handle) {
                h.execute(sql);
                ResultSet rs = h.getConnection().createStatement().executeQuery(sql);
                while (rs.next()) {
                    Review review = new Review();
                    review.setId(rs.getInt("id"));
                    review.setBeltId(rs.getInt("beltId"));
                    review.setUserId(rs.getInt("userId"));
                    review.setContent(rs.getString("content"));
                    review.setReviewerStar(rs.getInt("ratingStar"));
                    review.setCreatedAt(rs.getDate("createdAt").toLocalDate());
                    reviews.add(review);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            return reviews;
        });
    }

    public String getReviewerName(int reviewerId) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "SELECT u.name FROM users u JOIN reviews r ON u.id = r.userId WHERE r.userId = :userId";

            // Thực thi câu truy vấn
            String reviewerName = h.createQuery(sql)
                    .bind("userId", reviewerId)
                    .mapTo(String.class)
                    .findFirst().orElse(null);
            return reviewerName;
        });

    }

    public Review getReview(int reviewId) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "SELECT * FROM reviews WHERE id = :reviewId";

            return h.createQuery(sql)
                    .bind("reviewId", reviewId)
                    .map((rs, ctx) -> {
                        Review review = new Review();
                        review.setId(rs.getInt("id"));
                        review.setBeltId(rs.getInt("beltId"));
                        review.setUserId(rs.getInt("userId"));
                        review.setContent(rs.getString("content"));
                        review.setReviewerStar(rs.getInt("ratingStar"));
                        review.setCreatedAt(rs.getDate("createdAt").toLocalDate());
                        return review;
                    })
                    .findOne() // Lấy kết quả nếu tồn tại
                    .orElse(null); // Trả về null nếu không tìm thấy
        });
    }


    public boolean deleteReview(int reviewId) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "DELETE FROM reviews WHERE id = :reviewId";

            return h.createUpdate(sql)
                    .bind("reviewId", reviewId)
                    .execute() > 0;
        });
    }

    public String findProductNameByReviewId(int reviewId) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "SELECT b.name " +
                    "FROM belts b " +
                    "JOIN reviews r ON b.id = r.beltId " +
                    "WHERE r.id = :reviewId";

            String productName = h.createQuery(sql)
                    .bind("reviewId", reviewId)
                    .mapTo(String.class)
                    .findOnly();

            return productName;
        });
    }
}
