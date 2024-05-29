// models/StudentModel.js
import { DataTypes } from "sequelize"; 
import db from "../config/Database.js";

const Student = db.define('students', {
    student_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    first_name: DataTypes.STRING,
    last_name: DataTypes.STRING,
    year: DataTypes.INTEGER,
    status: DataTypes.ENUM('Regular', 'Irregular'),
    user_id: DataTypes.STRING,
    user_pass: DataTypes.STRING,
}, {
    freezeTableName: true,
    timestamps: false
});

export default Student;
