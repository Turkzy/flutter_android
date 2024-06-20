import StudyPlan from "../models/StudyPlanModel.js";

// Get study plans by user_id
export const getStudyPlansByUserId = async (req, res) => {
    const { user_id } = req.params;

    try {
        const studyPlans = await StudyPlan.findAll({
            where: { user_id }
        });

        if (studyPlans.length > 0) {
            res.status(200).json(studyPlans);
        } else {
            res.status(404).json({ message: "Study plans not found for this user" });
        }
    } catch (error) {
        console.error("Error fetching study plans:", error);
        res.status(500).json({ message: "Internal Server Error" });
    }
};
