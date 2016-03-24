Package.describe({
  name: 'crapthings:lulu',
  version: '0.0.1',
  summary: '',
  git: '',
  documentation: 'README.md'
});

Package.onUse(function (api) {

  api.versionsFrom('1.2.1');

  api.use([
    'mongo',
    'random',
    'templating',
    'accounts-password',

    'coffeescript',
    'stevezhu:lodash@4.6.1',
    'digilord:sugarjs@1.4.1'
  ]);

  api.add_files('lib/lulu.coffee');

  api.export('LuLu');

});