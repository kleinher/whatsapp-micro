// models/Driver.js
const { DataTypes } = require('sequelize');
const sequelize = require('../config/sequialize');

const Driver = sequelize.define('Driver', {
    name: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    phoneNumber: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    latitude: {
        type: DataTypes.FLOAT,
        allowNull: false,
    },
    longitude: {
        type: DataTypes.FLOAT,
        allowNull: false,
    },
}, {
    timestamps: true,
});
// Agregar un método personalizado "agregar" a la instancia
Driver.prototype.agregar = async function () {
    try {
        // Si la instancia no está persistida, se crea en la base de datos
        const nuevoDriver = await this.save();
        console.log('Driver agregado a la base de datos:', nuevoDriver);
        return nuevoDriver;
    } catch (error) {
        console.error('Error al agregar el driver:', error);
        throw error;
    }
};

module.exports = Driver;
