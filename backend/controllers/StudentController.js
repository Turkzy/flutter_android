import Student from "../models/StudentModel.js";
import Course from "../models/CourseModel.js";

// Get student info by user_id
// Get student info by user_id
export const getStudentInfo = async (req, res) => {
    const { user_id } = req.params;

    try {
        const student = await Student.findOne({
            where: { user_id },
            include: [{ model: Course, attributes: ['course_name'] }]
        });
        if (student) {
            res.status(200).json({
                student_name: student.student_name,
                address: student.address,
                course_name: student.course.course_name,
                cellphone: student.cellphone,
                email: student.email,
                birthday: student.birthday.toISOString(), 
                gender: student.gender,
                mother_name: student.mother_name,
                mother_contact: student.mother_contact,
                school_graduated: student.school_graduated,
                blood_type: student.blood_type,
                status: student.status
            });
        } else {
            res.status(404).json({ message: "Student not found" });
        }
    } catch (error) {
        console.error("Error retrieving student info:", error);
        res.status(500).json({ message: "Internal Server Error" });
    }
};



// Login endpoint
export const login = async (req, res) => {
    const { user_id, user_pass } = req.body;

    // Validate input
    if (!user_id || !user_pass) {
        return res.status(400).json({ message: "User ID and password are required" });
    }

    try {
        const student = await Student.findOne({
            where: { user_id, user_pass }
        });
        if (student) {
            res.status(200).json({ message: "Login successful" });
        } else {
            res.status(401).json({ message: "Invalid user ID or password" });
        }
    } catch (error) {
        console.error("Error during login:", error);
        res.status(500).json({ message: "Internal Server Error" });
    }
};
