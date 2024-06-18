    import Student from "../models/StudentModel.js";

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
            console.log(error.message);
            res.status(500).json({ message: "Internal Server Error" });
        }
    };
