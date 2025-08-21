// models/userModel.js
const mongoose = require('mongoose');

const userSchema = new mongoose.Schema({
    userId: {
        type: String,
        required: true,
        unique: true,
    },
    nickname: {
        type: String,
        required: true,
    },
    password: {
        type: String,
        required: true,
        min: 6,
    },
    balance: {
        type: Number,
        default: 0.0,
    },
    vipLevel: {
        type: String,
        default: 'VIP1',
    },
    date: {
        type: Date,
        default: Date.now,
    },
});

module.exports = mongoose.model('User', userSchema);
