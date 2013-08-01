# ngDropbox

ngDropbox is a [Dropbox Core API](https://www.dropbox.com/developers/core/docs) Client for AngularJS adapted from [dropbox-js](https://github.com/dropbox/dropbox-js). 


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

### API

* [<code>**Dropbox.accountInfo()**</code>](https://www.dropbox.com/developers/core/docs#account-info)
* [Dropbox.userInfo()](https://www.dropbox.com/developers/core/docs#account-info) (alias Dropbox.accountInfo())
* [Dropbox.readFile(path, params)](https://www.dropbox.com/developers/core/docs#files-GET)
* writeFile
* [Dropbox.stat(path, params)](https://www.dropbox.com/developers/core/docs#metadata)
* [Dropbox.metadata(path, params)](https://www.dropbox.com/developers/core/docs#metadata) (alias Dropbox.stat(path, params))
* [Dropbox.readdir(path, params)](https://www.dropbox.com/developers/core/docs#metadata)
* makeUrl 
* [Dropbox.history(path, params)](https://www.dropbox.com/developers/core/docs#revisions)
* [Dropbox.revisions(path, params)](https://www.dropbox.com/developers/core/docs#revisions) (alias Dropbox.history(path, params))
* [Dropbox.thumbnailUrl(path, params)]()
* readThumbnail
* [Dropbox.revertFile(path, rev)]()
* [Dropbox.restore(path, rev)]()
* [Dropbox.findByName(path, pattern, params)]()
* [Dropbox.search(path, pattern, params)]()
* makeCopyReference/copyRef
* pullChanges/delta
* [Dropbox.mkdir(path)](https://www.dropbox.com/developers/core/docs#fileops-create-folder)
* [Dropbox.remove(path)](https://www.dropbox.com/developers/core/docs#fileops-delete)
* [Dropbox.unlink(path)](https://www.dropbox.com/developers/core/docs#fileops-delete) (alias Dropbox.remove(path))
* [Dropbox.delete(path)](https://www.dropbox.com/developers/core/docs#fileops-delete) (alias Dropbox.remove(path))
* [Dropbox.copy(from, to)](https://www.dropbox.com/developers/core/docs#fileops-copy)
* [Dropbox.move(from, to)](https://www.dropbox.com/developers/core/docs#fileops-move)




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
* Test error cases


## Development

Installing the Karma test runner with `npm install karma -g`, then run the tests with `karma start`.


## Copyright and License

The library is Copyright (c) 2013 Christian Smith, and distributed under the MIT License.