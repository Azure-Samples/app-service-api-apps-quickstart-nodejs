'use strict';

var path    = require('path');
var url     = require('url');
var express = require('express');
var assign  = require('object-assign');

module.exports = function swaggerUi(options) {

  options = assign({
    docs: '/api-docs',
    swaggerUiPath: path.dirname(require.resolve('swagger-ui'))
  }, options);

  var router = new express.Router();

  router.use(function (req, res, next) {
    if (!req.query.url) {
      var query = req.query;
      query.url = options.docs;
      return res.redirect(301, url.format({query: query}));
    }
    next();
  });
  router.use(express.static(options.swaggerUiPath));

  return router;

};
