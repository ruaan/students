/**
 * StudentController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
  create: function (reg, res) {
    sails.models.student.create({
      id: reg.param('id'),
      firstName: reg.param('firstName'),
      lastName: reg.param('lastName'),
      class: reg.param('class'),
      nationality: reg.param('nationality')
    })
      .then(students => {
        return res.ok(students);
      })
      .catch(err => res.serverError(err));
  },
  find: function (reg, res) {
    //let attributes = {};
    if (reg.param('class')) {
      sails.models.student.find({class: reg.param('class')})
        .then(students => {
          return res.ok(students);
        })
        .catch(err => res.serverError(err));
    }
    if (reg.param('id')) {
      sails.models.student.find({id: reg.param('id')})
        .then(students => {
          return res.ok(students);
        })
        .catch(err => res.serverError(err));
    }

  },
  delete: function (reg, res) {
    sails.models.student.destroy({
      id: reg.param('id')
    })
      .then(students => {
        return res.ok(students);
      })
      .catch(err => res.serverError(err));

  },
  update: function (reg, res) {
    let attributes = {};
    if (reg.param('class')) {
      attributes.class = reg.param('class');
    }
    sails.models.student.update({
      id: reg.param.id
    }, attributes)
      .then(students => {
        return res.ok(students[0]);
      })
      .catch(err => res.serverError(err));
  },

};

