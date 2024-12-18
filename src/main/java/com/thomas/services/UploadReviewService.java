package com.thomas.services;

import com.thomas.dao.ReviewDao;
import com.thomas.dao.model.Reviews;

import java.util.List;

public class UploadReviewService {
    ReviewDao reviewDao;

    public UploadReviewService() {
        reviewDao = new ReviewDao();
    }

    public List<Reviews> getReviews() {
        return reviewDao.getReviews();
    }

    public void setReviewerName(Reviews reviews) {
        if (reviews != null) {
            String reviewerName = reviewDao.getReviewerName(reviews.getUserId());
            reviews.setReviewerName(reviewerName);
        }
    }

    public boolean deleteReview(int reviewId) {
        return reviewDao.deleteReview(reviewId);
    }

    public Reviews findReview(int reviewId) {
        return reviewDao.getReview(reviewId);
    }

    public void setProductName(Reviews reviews) {
        if (reviews != null) {
            String reviewerName = reviewDao.findProductNameByReviewId(reviews.getBeltId());
            reviews.setBeltName(reviewerName);
        }
    }

    public String findProductName(int reviewId) {
        return reviewDao.findProductNameByReviewId(reviewId);
    }

    public List<Reviews> getReviewsByBeltId(int beltId) {
        return reviewDao.getAllReviewById(beltId);
    }
}
