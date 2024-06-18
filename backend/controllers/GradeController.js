// GradeController.js

import Gradefirstyr from "../models/GradefirstyrModel.js";
import Gradesecondyr from "../models/GradesecondyrModel.js";
import Gradethirdyr from "../models/GradethirdyrModel.js";
import Gradefourthyr from "../models/GradefourthyrModel.js";

// Controller for first year grades
export const getFirstYearGrades = async (req, res) => {
    const { user_id } = req.params;

    try {
        const grades = await Gradefirstyr.findAll({
            where: { user_id }
        });

        res.status(200).json(grades);
    } catch (error) {
        console.error("Error fetching first year grades:", error);
        res.status(500).json({ message: "Internal Server Error" });
    }
};

// Controller for second year grades (Add controllers for third and fourth year similarly)
export const getSecondYearGrades = async (req, res) => {
    const { user_id } = req.params;

    try {
        const grades = await Gradesecondyr.findAll({
            where: { user_id }
        });

        res.status(200).json(grades);
    } catch (error) {
        console.error("Error fetching second year grades:", error);
        res.status(500).json({ message: "Internal Server Error" });
    }
};

// Example of controller for third year grades
export const getThirdYearGrades = async (req, res) => {
    const { user_id } = req.params;

    try {
        const grades = await Gradethirdyr.findAll({
            where: { user_id }
        });

        res.status(200).json(grades);
    } catch (error) {
        console.error("Error fetching third year grades:", error);
        res.status(500).json({ message: "Internal Server Error" });
    }
};

// Example of controller for fourth year grades
export const getFourthYearGrades = async (req, res) => {
    const { user_id } = req.params;

    try {
        const grades = await Gradefourthyr.findAll({
            where: { user_id }
        });

        res.status(200).json(grades);
    } catch (error) {
        console.error("Error fetching fourth year grades:", error);
        res.status(500).json({ message: "Internal Server Error" });
    }
};
