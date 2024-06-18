// models/EnrollmentModel.js
import { DataTypes } from "sequelize"; 
import db from "../config/Database.js";
import Student from "./StudentModel.js";
import Course from "./CourseModel.js";

const Enrollment = db.define('enrollments', {
    enrollment_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    student_id: {
        type: DataTypes.INTEGER,
        references: {
            model: Student,
            key: 'student_id'
        }
    },
    course_id: {
        type: DataTypes.INTEGER,
        references: {
            model: Course,
            key: 'course_id'
        }
    }
}, {
    freezeTableName: true,
    timestamps: false
});

Student.hasMany(Enrollment, { foreignKey: 'student_id' });
Course.hasMany(Enrollment, { foreignKey: 'course_id' });
Enrollment.belongsTo(Student, { foreignKey: 'student_id' });
Enrollment.belongsTo(Course, { foreignKey: 'course_id' });

export default Enrollment;
