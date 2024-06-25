import express from 'express';
import { getChecklistByUserId } from '../controllers/ChecklistController.js';

const router = express.Router();

// Define the route to get checklist by user_id
router.get('/checklist/:user_id', getChecklistByUserId);

export default router;
