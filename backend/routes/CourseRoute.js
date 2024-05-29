// routes/CourseRoute.js
import express from "express";
import { getCourses, addCourse } from "../controllers/CourseController.js";

const router = express.Router();

router.get('/courses', getCourses);
router.post('/courses', addCourse);

export default router;
