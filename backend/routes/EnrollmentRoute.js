// routes/EnrollmentRoute.js
import express from "express";
import { getEnrollments, enrollStudent } from "../controllers/EnrollmentController.js";

const router = express.Router();

router.get('/enrollments', getEnrollments);
router.post('/enrollments', enrollStudent);

export default router;
