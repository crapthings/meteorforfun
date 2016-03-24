_ = lodash

@Lulu = class Lulu

  constructor: (opt) ->

    console.log 111

    _OPTS = do opt.pluralize

    _COLLECTION = new Mongo.Collection _OPTS

    _METHODS = {}

    _METHODS["#{_OPTS}.create"] = (opt) ->
      _COLLECTION.insert opt

    _METHODS["#{_OPTS}.update"] = (id, opt) ->
      _COLLECTION.update id, $set: opt

    _METHODS["#{_OPTS}.remove"] = (id) ->
      _COLLECTION.remove id

    Meteor.methods _METHODS

    return _COLLECTION
