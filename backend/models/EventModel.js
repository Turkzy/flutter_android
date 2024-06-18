import { DataTypes } from "sequelize"; 
import db from "../config/Database.js";

const Event = db.define('events', {
    event_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    event_title: DataTypes.STRING,
    event_description: DataTypes.STRING,
    event_date: DataTypes.DATE
}, {
    freezeTableName: true,
    timestamps: false
});

export default Event;
