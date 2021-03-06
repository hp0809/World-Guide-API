module.exports = {
    PORT: process.env.PORT || 8000,
    NODE_ENV: process.env.NODE_ENV || 'development',
    DB_URL: process.env.DATABASE_URL || 'postgresql://world_guide_user@localhost/world-guide-api',
    JWT_SECRET: process.env.JWT_SECRET || process.env.JWT_SECRET,
    JWT_EXPIRY: process.env.JWT_EXPIRY || '3h'
}