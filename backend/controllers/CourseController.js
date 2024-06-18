// controllers/CourseController.js
import Course from "../models/CourseModel.js";

// Get all courses
export const getCourses = async (req, res) => {
    try {
        const courses = await Course.findAll();
        res.status(200).json(courses);
    } catch (error) {
        console.log(error.message);
        res.status(500).json({ message: "Internal Server Error" });
    }
};

// Add a course
export const addCourse = async (req, res) => {
    const { course_name, credits } = req.body;
    try {
        const course = await Course.create({ course_name, credits });
        res.status(201).json(course);
    } catch (error) {
        console.log(error.message);
        res.status(500).json({ message: "Internal Server Error" });
    }
};
