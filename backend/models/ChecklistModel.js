import { DataTypes } from "sequelize";
import db from "../config/Database.js";

const Checklist = db.define('checklist', {
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
    units: {
        type: DataTypes.FLOAT,
        allowNull: false
    },
    pre_requisite: {
        type: DataTypes.STRING 
    },
    semester: {
        type: DataTypes.STRING,
        allowNull: false
    },
    year: {
        type: DataTypes.STRING,
        allowNull: false
    },
    lec: {
        type: DataTypes.STRING,
        allowNull: false
    },
    lab: {
        type: DataTypes.STRING,
        allowNull: false
    },
    grade: {
        type: DataTypes.STRING,
        allowNull: false
    },
}, {
    freezeTableName: true,
    timestamps: false
});

export default Checklist;
