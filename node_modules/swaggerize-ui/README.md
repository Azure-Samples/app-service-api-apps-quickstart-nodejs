# swaggerize-ui

[![io.js compatibility](https://img.shields.io/badge/io.js-compatible-brightgreen.svg?style=flat)](https://iojs.org/)
[![node.js compatibility](https://img.shields.io/badge/node.js-compatible-brightgreen.svg?style=flat)](https://nodejs.org/)

[![NPM version](http://img.shields.io/npm/v/swaggerize-ui.svg?style=flat)](https://www.npmjs.org/package/swaggerize-ui)
[![Dependency Status](http://img.shields.io/david/ksmithut/swaggerize-ui.svg?style=flat)](https://david-dm.org/ksmithut/swaggerize-ui)
[![Dev Dependency Status](http://img.shields.io/david/dev/ksmithut/swaggerize-ui.svg?style=flat)](https://david-dm.org/ksmithut/swaggerize-ui#info=devDependencies&view=table)
[![Code Climate](http://img.shields.io/codeclimate/github/ksmithut/swaggerize-ui.svg?style=flat)](https://codeclimate.com/github/ksmithut/swaggerize-ui)
[![Build Status](http://img.shields.io/travis/ksmithut/swaggerize-ui/master.svg?style=flat)](https://travis-ci.org/ksmithut/swaggerize-ui)
[![Coverage Status](http://img.shields.io/codeclimate/coverage/github/ksmithut/swaggerize-ui.svg?style=flat)](https://codeclimate.com/github/ksmithut/swaggerize-ui)

`swaggerize-ui` is an node [`express`](http://expressjs.com/) middleware to
show [`swagger-ui`](https://github.com/swagger-api/swagger-ui) for your local
(or external) api.

# Installation

```bash
npm install --save swaggerize-ui
```

# Usage

```js
'use strict';

var http      = require('http');
var express   = require('express');
var app       = express();
var server    = http.createServer(app);
var swaggerUi = require('swaggerize-ui');

app.use('/api-docs', function (req, res) {
  res.json(require('./path/to/swaggerize/docs.json'));
});

app.use('/docs', swaggerUi({
  docs: '/api-docs' // from the express route above.
}));

server.listen(8000)
  .on('listening', function () {

  })
  .on('error', function (err) {

  });

```

# Options

* `docs` - This is the path that gets put into to swagger-ui by default. You can
do an absolute uri like above, or you can do a full url starting with `http://`.
Default value is `'api-docs'`.

* `swaggerUiPath` - This is the absolute path to whatever version of swagger-ui
you would like to use. This should be to the `dist/` folder within that project.
Default value is the path to the `swagger-ui` module in this module's
node_modules directory.

# Questions

Hopefully this is simple enough to use to help make your swaggerized apis more
consumable. If you do have any questions about how to use it, feel free to open
up an issue, or a pull request.
