import express from "express";
import {
    getFirstYearGrades,
    getSecondYearGrades,
    getThirdYearGrades,
    getFourthYearGrades
} from "../controllers/GradeController.js";

const router = express.Router();

// Routes for first year grades
router.get('/grades/first-year/:user_id', getFirstYearGrades);

// Routes for second year grades
router.get('/grades/second-year/:user_id', getSecondYearGrades);

// Routes for third year grades
router.get('/grades/third-year/:user_id', getThirdYearGrades);

// Routes for fourth year grades
router.get('/grades/fourth-year/:user_id', getFourthYearGrades);

export default router;
