/**
 * Test model: StudentModel.test.js
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @sails docs  :: http://sailsjs.org/documentation/concepts/testing -
 * @chai docs  :: http://chaijs.com/guide/styles/
 * @sinon docs  :: http://sinonjs.org/docs/
 * @supertest  :: https://github.com/visionmedia/supertest
 */
'use strict';

var supertest = require('supertest');

describe('StudentController.create', function() {

  describe('#create()', function() {
    it('should create a student', function (done) {
      supertest(sails.hooks.http.app)
        .post('/student')
        .send({ id: 82738237, firstName: 'John',  lastName: 'Snow', class: '1 A', nationality: 'South African' })
        .expect(200, done())
    });
  });
  describe('#find()', function() {
    it('should find student by class', function (done) {
      supertest(sails.hooks.http.app)
        .post('/student')
        .send({ id: 82738237, firstName: 'John',  lastName: 'Snow', class: '1 A', nationality: 'South African' })
        .expect(200, done())
    });
  });
  describe('#find()', function() {
    it('should find student by id', function (done) {
      supertest(sails.hooks.http.app)
        .post('/student')
        .send({ id: 82738237, firstName: 'John',  lastName: 'Snow', class: '1 A', nationality: 'South African' })
        .expect(200, done())
    });
  });
  describe('#update()', function() {
    it('should update a student', function (done) {
      supertest(sails.hooks.http.app)
        .post('/student')
        .send({ id: 82738237, firstName: 'John',  lastName: 'Snow', class: '1 A', nationality: 'South African' })
        .expect(200, done())
    });
  });
  describe('#delete()', function() {
    it('should delete a student', function (done) {
      supertest(sails.hooks.http.app)
        .post('/student')
        .send({ id: 82738237, firstName: 'John',  lastName: 'Snow', class: '1 A', nationality: 'South African' })
        .expect(200, done())
    });
  });

});
