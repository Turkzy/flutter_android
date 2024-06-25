import Checklist from "../models/ChecklistModel.js";

// Get checklist by user_id
export const getChecklistByUserId = async (req, res) => {
    const { user_id } = req.params;

    try {
        const studentChecklist = await Checklist.findAll({
            where: { user_id }
        });

        if (studentChecklist.length > 0) {
            res.status(200).json(studentChecklist);
        } else {
            res.status(404).json({ message: "Checklist not found for this user" });
        }
    } catch (error) {
        console.error("Error fetching checklist:", error);
        res.status(500).json({ message: "Internal Server Error" });
    }
};
