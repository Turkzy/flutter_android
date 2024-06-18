import express from "express";
import { getSchedulesByUserId } from "../controllers/ScheduleController.js";

const router = express.Router();

router.get("/schedules/:user_id", getSchedulesByUserId);

export default router;
