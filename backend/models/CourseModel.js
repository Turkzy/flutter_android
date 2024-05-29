// models/CourseModel.js
import { DataTypes } from "sequelize"; 
import db from "../config/Database.js";

const Course = db.define('courses', {
    course_id: {
        type: DataTypes.INTEGER,    
        primaryKey: true,
        autoIncrement: true
    },
    course_name: DataTypes.STRING,
    credits: DataTypes.INTEGER,
}, {
    freezeTableName: true,
    timestamps: false
});

export default Course;
