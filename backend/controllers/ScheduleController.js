import Schedule from "../models/ScheduleModel.js";

// Get schedules by user_id
export const getSchedulesByUserId = async (req, res) => {
    const { user_id } = req.params;

    try {
        const schedules = await Schedule.findAll({
            where: { user_id }
        });

        if (schedules.length > 0) {
            res.status(200).json(schedules);
        } else {
            res.status(404).json({ message: "Schedules not found for this user" });
        }
    } catch (error) {
        console.error("Error fetching schedules:", error);
        res.status(500).json({ message: "Internal Server Error" });
    }
};
