import express from "express";
import FileUpload from "express-fileupload";
import cors from "cors";
import StudentRoute from "./routes/StudentRoute.js";
import EventRoute from "./routes/EventRoute.js";
import CourseRoute from "./routes/CourseRoute.js";
import EnrollmentRoute from "./routes/EnrollmentRoute.js";

import db from "./config/Database.js";
import Student from "./models/StudentModel.js";
import Course from "./models/CourseModel.js";
import Enrollment from "./models/EnrollmentModel.js";
import Event from "./models/EventModel.js";

const app = express();

app.use(cors());
app.use(express.json());
app.use(FileUpload());
app.use(express.static("public"));

app.use(StudentRoute);
app.use(EventRoute);
app.use(CourseRoute);
app.use(EnrollmentRoute);

const syncDatabase = async () => {
    try {
        await db.sync({ alter: true }); // Use { force: true } if you want to drop and recreate tables each time
        console.log("All models were synchronized successfully.");
    } catch (error) {
        console.error("Failed to synchronize models:", error);
    }
};

syncDatabase();

app.listen(5000, () => console.log("Server is Running..."));
