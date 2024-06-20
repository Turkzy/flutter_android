import { DataTypes } from "sequelize";
import db from "../config/Database.js";

const StudyPlan = db.define('study_plan', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    pre_requisite: {
        type: DataTypes.STRING 
    }
}, {
    freezeTableName: true,
    timestamps: false
});

export default StudyPlan;
