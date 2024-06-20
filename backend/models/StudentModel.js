import { DataTypes } from "sequelize";
import db from "../config/Database.js";
import Course from "./CourseModel.js";
import Gradefirstyr from "./GradefirstyrModel.js";
import Gradesecondtyr from "./GradesecondyrModel.js";
import Gradethirdyr from "./GradethirdyrModel.js";
import Gradefourthyr from "./GradefourthyrModel.js";
import Schedule from "./ScheduleModel.js";


const Student = db.define('students', {
    student_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    student_name: DataTypes.STRING,
    user_id: DataTypes.STRING,
    user_pass: DataTypes.STRING,
    address: DataTypes.STRING,
    gender: DataTypes.ENUM('Male', 'Female'),
    birthday: DataTypes.DATE,
    cellphone: DataTypes.STRING,
    email: DataTypes.STRING,
    mother_name: DataTypes.STRING,
    mother_contact: DataTypes.STRING,
    school_graduated: DataTypes.STRING,
    blood_type: DataTypes.STRING,
    course_id: DataTypes.INTEGER,
    status: DataTypes.ENUM('Regular', 'Irregular'),
    gradefirstyr_id: DataTypes.INTEGER, 
    gradesecondtyr_id: DataTypes.INTEGER, 
    gradethirdyr_id: DataTypes.INTEGER, 
    gradefourthyr_id: DataTypes.INTEGER,
    schedule_id: DataTypes.INTEGER,
    
}, {
    freezeTableName: true,
    timestamps: false
});

// Define associations
Student.belongsTo(Course, { foreignKey: 'course_id' });
Student.belongsTo(Gradefirstyr, { foreignKey: 'gradefirstyr_id' });
Student.belongsTo(Gradesecondtyr, { foreignKey: 'gradesecondtyr_id' });
Student.belongsTo(Gradethirdyr, { foreignKey: 'gradethirdyr_id' });
Student.belongsTo(Gradefourthyr, { foreignKey: 'gradefourthyr_id' });

Student.belongsTo(Schedule, { foreignKey: 'schedule_id' });




export default Student;
