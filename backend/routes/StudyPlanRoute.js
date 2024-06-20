import express from "express";
import { getStudyPlansByUserId } from "../controllers/StudyPlanController.js";

const router = express.Router();

// Get study plans by user_id
router.get("/study-plans/:user_id", getStudyPlansByUserId);

export default router;
