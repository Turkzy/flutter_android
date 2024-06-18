import { DataTypes } from "sequelize";
import db from "../config/Database.js";

const Schedule = db.define('schedule', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    user_id: {
        type: DataTypes.STRING,
        allowNull: false
    },
    subject_code: {
        type: DataTypes.STRING,
        allowNull: false
    },
    description: {
        type: DataTypes.STRING,
        allowNull: false
    },
    day: {
        type: DataTypes.STRING,
        allowNull: false
    },
    time: {
        type: DataTypes.STRING,
        allowNull: false
    },
    room: {
        type: DataTypes.STRING,
        allowNull: false
    },
    faculty: {
        type: DataTypes.STRING,
        allowNull: false
    },
    class_type: {
        type: DataTypes.STRING,
        allowNull: false
    },
    semester: {
        type: DataTypes.STRING,
        allowNull: false
    },
    year: {
        type: DataTypes.STRING,
        allowNull: false
    }
}, {
    freezeTableName: true,
    timestamps: false
});

export default Schedule;
