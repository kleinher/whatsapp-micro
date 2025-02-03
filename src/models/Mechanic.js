const { DataTypes } = require('sequelize');
const sequelize = require('../config/sequialize');

const Mechanic = sequelize.define('Mechanic', {
    name: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    address: {
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

Mechanic.prototype.agregar = async function () {
    try {
        const newMechanic = await this.save();
        console.log('Driver agregado a la base de datos:', newMechanic);
        return newMechanic.id;
    } catch (error) {
        console.error('Error al agregar el driver:', error);
        throw error;
    }
};

module.exports = Mechanic;