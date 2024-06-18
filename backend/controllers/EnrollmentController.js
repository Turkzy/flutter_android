// controllers/EnrollmentController.js
import Enrollment from "../models/EnrollmentModel.js";

// Get all enrollments
export const getEnrollments = async (req, res) => {
    try {
        const enrollments = await Enrollment.findAll();
        res.status(200).json(enrollments);
    } catch (error) {
        console.log(error.message);
        res.status(500).json({ message: "Internal Server Error" });
    }
};

// Enroll a student in a course
export const enrollStudent = async (req, res) => {
    const { student_id, course_id } = req.body;
    try {
        const enrollment = await Enrollment.create({ student_id, course_id });
        res.status(201).json(enrollment);
    } catch (error) {
        console.log(error.message);
        res.status(500).json({ message: "Internal Server Error" });
    }
};
    