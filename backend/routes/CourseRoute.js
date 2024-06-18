// routes/CourseRoute.js
import express from "express";
import { getCourses} from "../controllers/CourseController.js";

const router = express.Router();

router.get('/courses', getCourses);

export default router;
