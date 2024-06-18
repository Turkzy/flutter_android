import { DataTypes } from "sequelize";
import db from "../config/Database.js";

const Gradefirstyr = db.define('gradefirstyr', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    user_id: DataTypes.STRING,
    subject_code: {
        type: DataTypes.STRING,
        allowNull: false
    },
    description: {
        type: DataTypes.STRING,
        allowNull: false
    },
    units: {
        type: DataTypes.FLOAT,
        allowNull: false
    },
    course_grade: {
        type: DataTypes.STRING,
        allowNull: false
    },
    remarks: {
        type: DataTypes.STRING,
        allowNull: false
    },
    semester: {
        type: DataTypes.STRING,
        allowNull: false
    }
}, {
    freezeTableName: true,
    timestamps: false
});

export default Gradefirstyr;
