'use strict'

describe 'DropboxProvider', ->


  {DropboxProvider} = {}


  beforeEach module 'dropbox'


  beforeEach module ($injector) ->
    DropboxProvider = $injector.get 'DropboxProvider'
    DropboxProvider.config 'CLIENT_ID', 'https://HOST/callback.html'


  beforeEach inject ($injector) ->
    Dropbox = $injector.get 'Dropbox'


  describe 'configure', ->
    
    it 'should set the client id', ->
      expect(DropboxProvider.clientId).toBe 'CLIENT_ID'

    it 'should set the redirect uri', ->
      expect(DropboxProvider.redirectUri).toBe 'https://HOST/callback.html'


