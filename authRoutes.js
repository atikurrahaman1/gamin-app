// routes/authRoutes.js
const router = require('express').Router();
const User = require('../models/userModel');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');

// Register
router.post('/register', async (req, res) => {
    // Check if user already exists
    const userExist = await User.findOne({ userId: req.body.userId });
    if (userExist) return res.status(400).send('User ID already exists.');

    // Hash password
    const salt = await bcrypt.genSalt(10);
    const hashedPassword = await bcrypt.hash(req.body.password, salt);

    // Create a new user
    const user = new User({
        userId: req.body.userId,
        nickname: req.body.nickname,
        password: hashedPassword,
    });

    try {
        const savedUser = await user.save();
        res.send({ user: user._id, message: 'Registration successful!' });
    } catch (err) {
        res.status(400).send(err);
    }
});

// Login
router.post('/login', async (req, res) => {
    // Check if user exists
    const user = await User.findOne({ userId: req.body.userId });
    if (!user) return res.status(400).send('User ID is not found.');

    // Check if password is correct
    const validPass = await bcrypt.compare(req.body.password, user.password);
    if (!validPass) return res.status(400).send('Invalid password.');

    // Create and assign a token
    const token = jwt.sign({ _id: user._id }, process.env.JWT_SECRET);
    res.header('auth-token', token).send({ token: token, message: 'Logged in successfully!' });
});


module.exports = router;
