import express from "express";
import { getStudentInfo } from "../controllers/StudentController.js";
import { login } from "../controllers/StudentController.js";

const router = express.Router();

router.get('/students/:user_id/info', getStudentInfo);
router.post('/login', login);

export default router;
