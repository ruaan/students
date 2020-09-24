/**
 * Created by @cpmproto
 */
module.exports = {
  sailsUrl: function () {
    return sails.getBaseURL() + sails.config.blueprints.prefix;
  },
  log: {
    level: 'error'
  },
  models: {
    connection: 'localDiskDb',
    migrate: 'drop'
  }
};
