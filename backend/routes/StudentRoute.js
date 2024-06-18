import express from "express";
import { login } from "../controllers/StudentController.js";

const router = express.Router();

router.post('/login', login);

export default router;
