# ngDropbox

ngDropbox is a Dropbox API Client for AngularJS adapted from [dropbox-js](https://github.com/dropbox/dropbox-js). 


## Status

This module is extracted from an AngularJS application. It mostly satisfies the needs of that project in this incomplete state, but I'm actively working (as of 8/1/2013) to implement the rest of the API. Peer review and bug fixes are much appreciated, please communicate via issues. Thanks in advance!


## Install

    bower install git@github.com:christiansmith/ngDropbox.git --save


## Authorization

After you create an app in the [Dropbox App Console](https://www.dropbox.com/developers/apps), add an OAuth Redirect URI pointing to `https://<HOST>/components/ngDropbox/callback.html`. Then inform your Angular app of the App key:

    angular.module('myApp').value('DropboxClientId', <APP_KEY>);


## Development

Installing the Karma test runner with `npm install karma -g`, then run the tests with `karma start`.


## Copyright and License

The library is Copyright (c) 2013 Christian Smith, and distributed under the MIT License.