const knex = require('knex')
const bcrypt = require('bcryptjs')
const app = require('../src/app')
const helpers = require('./test-helpers')

describe.skip('Users Endpoints', function() {
  let db

  const { testUsers } = helpers.makeUserFixtures()
  const testUser = testUsers[0]

  before('make knex instance', () => {
    db = knex({
      client: 'pg',
      connection: process.env.TEST_DB_URL,
    })
    app.set('db', db)
  })

  after('disconnect from db', () => db.destroy())

  before('cleanup', () => helpers.cleanTables(db))

  afterEach('cleanup', () => helpers.cleanTables(db))

  describe(`POST /world-guide/api/users`, () => {
    context(`User Validation`, () => {
      beforeEach('insert users', () =>
        helpers.seedUsers(
          db,
          testUsers,
        )
      )

      const requiredFields = ['user_name', 'password']

      requiredFields.forEach(field => {
        const registerAttemptBody = {
          user_name: 'test user_name',
          password: 'test password',
            
          nickname: 'test nickname',
        }

        it(`responds with 400 required error when '${field}' is missing`, () => {
          delete registerAttemptBody[field]

          return supertest(app)
            .post('/world-guide/api/users')
            .send(registerAttemptBody)
            .expect(400, {
              error: `Missing '${field}' in request body`,
            })
        })
      })

      it(`responds 400 'Password be longer than 8 characters' when empty password`, () => {
        const userShortPassword = {
          user_name: 'test user_name',
          password: '1234567',
          
        }
        return supertest(app)
          .post('/world-guide/api/users')
          .send(userShortPassword)
          .expect(400, { error: `Password be longer than 8 characters` })
      })

      it(`responds 400 'Password be less than 72 characters' when long password`, () => {
        const userLongPassword = {
          user_name: 'test user_name',
          password: '*'.repeat(73),
          
        }
        return supertest(app)
          .post('/world-guide/api/users')
          .send(userLongPassword)
          .expect(400, { error: `Password be less than 72 characters` })
      })

      it(`responds 400 error when password starts with spaces`, () => {
        const userPasswordStartsSpaces = {
          user_name: 'test user_name',
          password: ' 1Aa!2Bb@',
         
        }
        return supertest(app)
          .post('/world-guide/api/users')
          .send(userPasswordStartsSpaces)
          .expect(400, { error: `Password must not start or end with empty spaces` })
      })

      it(`responds 400 error when password ends with spaces`, () => {
        const userPasswordEndsSpaces = {
          user_name: 'test user_name',
          password: '1Aa!2Bb@ ',
         
        }
        return supertest(app)
          .post('/world-guide/api/users')
          .send(userPasswordEndsSpaces)
          .expect(400, { error: `Password must not start or end with empty spaces` })
      })

      it(`responds 400 error when password isn't complex enough`, () => {
        const userPasswordNotComplex = {
          user_name: 'test user_name',
          password: '11AAaabb',
          
        }
        return supertest(app)
          .post('/world-guide/api/users')
          .send(userPasswordNotComplex)
          .expect(400, { error: `Password must contain one upper case, lower case, number and special character` })
      })

      it(`responds 400 'User name already taken' when user_name isn't unique`, () => {
        const duplicateUser = {
          user_name: testUser.user_name,
          password: '11AAaa!!',
          
        }
        return supertest(app)
          .post('/world-guide/api/users')
          .send(duplicateUser)
          .expect(400, { error: `Username already taken` })
      })
    })

    context(`Happy path`, () => {
      it(`responds 201, serialized user, storing bcryped password`, () => {
        const newUser = {
          user_name: 'test user_name',
          password: '11AAaa!!',
          
        }
        return supertest(app)
          .post('/world-guide/api/users')
          .send(newUser)
          .expect(201)
          .expect(res => {
            expect(res.body).to.have.property('id')
            expect(res.body.user_name).to.eql(newUser.user_name)
            
            expect(res.body.nickname).to.eql('')
            expect(res.body).to.not.have.property('password')
            expect(res.headers.location).to.eql(`/world-guide/api/users/${res.body.id}`)
            const expectedDate = new Date().toLocaleString('en', { timeZone: 'UTC' })
            const actualDate = new Date(res.body.date_created).toLocaleString()
            expect(actualDate).to.eql(expectedDate)
          })
          .expect(res =>
            db
              .from('world_guide_users')
              .select('*')
              .where({ id: res.body.id })
              .first()
              .then(row => {
                expect(row.user_name).to.eql(newUser.user_name)
                
                expect(row.nickname).to.eql(null)
                const expectedDate = new Date().toLocaleString('en', { timeZone: 'UTC' })
                const actualDate = new Date(row.date_created).toLocaleString()
                expect(actualDate).to.eql(expectedDate)

                return bcrypt.compare(newUser.password, row.password)
              })
              .then(compareMatch => {
                expect(compareMatch).to.be.true
              })
          )
      })
    })
  })
})