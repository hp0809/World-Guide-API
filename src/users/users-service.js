const bcrypt = require('bcryptjs');
const xss = require('xss');

const REGEX_UPPER_LOWER_NUMBER_SPECIAL = /(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&])[\S]+/

const UsersService = {
    listUsers(db) {
      return db
        .from('world_guide_users')
        .select('*')

    },
    hasUserWithUserName(db, user_name) {
      return db('world_guide_users')
        .where({ user_name })
        .first()
        .then(user => !!user)
    },
    insertUser(db, newUser) {
      return db
        .insert(newUser)
        .into('world_guide_users')
        .returning('*')
        .then(([user]) => user)
    },
    validatePassword(password) {
      if (password.length < 8) {
        return {message: 'Password be longer than 8 characters'}
      }
      if (password.length > 72) {
        return {message:'Password be less than 72 characters'}
      }
      if (password.startsWith(' ') || password.endsWith(' ')) {
        return {message:'Password must not start or end with empty spaces'}
      }
      if (!REGEX_UPPER_LOWER_NUMBER_SPECIAL.test(password)) {
        return {message:'Password must contain one upper case, lower case, number and special character'}
      }
      return null
    },
    hashPassword(password) {
      return bcrypt.hash(password, 12)
    },
    serializeUser(user) {
      return {
        id: user.id,
        user_name: xss(user.user_name),
        nickname: xss(user.nick_name),
        date_created: new Date(user.date_created),
      }
    },
  }

  module.exports = UsersService 