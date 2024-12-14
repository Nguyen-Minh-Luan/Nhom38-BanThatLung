package com.thomas.services;

import com.thomas.dao.ReviewDao;
import com.thomas.dao.model.Review;

import java.util.List;

public class UploadReviewService {
    ReviewDao reviewDao;

    public UploadReviewService() {
        reviewDao = new ReviewDao();
    }

    public List<Review> getReviews() {
        return reviewDao.getReviews();
    }

    public void setReviewerName(Review review) {
        if (review != null) {
            String reviewerName = reviewDao.getReviewerName(review.getUserId());
            review.setReviewerName(reviewerName);
        }
    }

    public boolean deleteReview(int reviewId) {
        return reviewDao.deleteReview(reviewId);
    }

    public Review findReview(int reviewId) {
        return reviewDao.getReview(reviewId);
    }

    public void setProductName(Review review) {
        if (review != null) {
            String reviewerName = reviewDao.findProductNameByReviewId(review.getBeltId());
            review.setBeltName(reviewerName);
        }
    }

    public String findProductName(int reviewId) {
        return reviewDao.findProductNameByReviewId(reviewId);
    }
}
