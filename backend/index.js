import express from "express";
import cors from "cors";
import StudentRoute from "./routes/StudentRoute.js";
import EventRoute from "./routes/EventRoute.js";
import CourseRoute from "./routes/CourseRoute.js";
import GradeRoute from "./routes/GradeRoute.js";
import ScheduleRoute from "./routes/ScheduleRoute.js"
import db from "./config/Database.js";
import StudyPlan from "./routes/StudyPlanRoute.js";

const app = express();
const PORT = process.env.PORT || 5000;

app.use(cors());
app.use(express.json());

app.use(StudentRoute);
app.use(EventRoute);
app.use(CourseRoute);
app.use(GradeRoute);
app.use(ScheduleRoute)
app.use(StudyPlan)

const syncDatabase = async () => {
    try {
        await db.sync({ alter: true });
        console.log("All models were synchronized successfully.");
    } catch (error) {
        console.error("Failed to synchronize models:", error);
    }
};

syncDatabase();

app.listen(PORT, () => console.log(`Server is running on port ${PORT}`));
