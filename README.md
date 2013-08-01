# ngDropbox

ngDropbox is a Dropbox API Client for AngularJS adapted from [dropbox-js](https://github.com/dropbox/dropbox-js). 


## Status

This module is extracted from an AngularJS application. It mostly satisfies the needs of that project in this incomplete state, but I'm actively working (as of 8/1/2013) to implement the rest of the API. Peer review and bug fixes are much appreciated, please communicate via issues. Thanks in advance!


## Install

    bower install git@github.com:christiansmith/ngDropbox.git --save


## Authorization

After you create an app in the [Dropbox App Console](https://www.dropbox.com/developers/apps), add an OAuth Redirect URI pointing to `https://<HOST>/components/ngDropbox/callback.html`. Then inform your Angular app of the App key and Redirect URI:

    angular.module('myApp')
      .value('DropboxClientId', <APP_KEY>)
      .value('DropboxRedirectUri', <REDIRECT_URI>)

## Usage

Inject the service into your controllers and call any methods. All server methods return promises.

    angular.module('myApp')
      .controller('DropboxCtrl', function ($scope, Dropbox) {
        $scope.accountInfo = Dropbox.accountInfo();
      });

Methods

    Dropbox.accountInfo()
    // alias: Dropbox.userInfo()
    
    Dropbox.readFile(path, params)
    
    Dropbox.stat(path, params)
    // alias: Dropbox.metadata(path, params)

    Dropbox.readdir(path, params)

    // alias: makeUrl 

    Dropbox.history(path, params)
    // alias: Dropbox.revisions(path, params)

    Dropbox.thumbnailUrl(path, params)

    // alias: readThumbnail

    Dropbox.revertFile(path, rev)
    // alias: Dropbox.restore(path, rev)

    Dropbox.findByName(path, pattern, params)
    // alias: Dropbox.search(path, pattern, params)

    // alias: makeCopyReference/copyRef

    // alias: pullChanges/delta

    Dropbox.mkdir(path)

    Dropbox.remove(path)
    // alias: Dropbox.unlink(path), Dropbox.delete(path)

    Dropbox.copy(from, to)

    Dropbox.move(from, to)




## TODO

Methods yet to be implemented (as of 8/1/2013).

* signOut/signOff
* writeFile
* resumableUpload
* makeUrl
* readThumbnail
* makeCopyReference/copyRef
* pullChanges/delta

Other

* Support redirect and other authentication methods in addition to browser popup
* Test in multiple browsers


## Development

Installing the Karma test runner with `npm install karma -g`, then run the tests with `karma start`.


## Copyright and License

The library is Copyright (c) 2013 Christian Smith, and distributed under the MIT License.