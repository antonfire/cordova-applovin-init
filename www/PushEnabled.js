/**
 * A simple plugin for Cordova to check if push is enabled on iOS.
 *
 * Developed by antonfire
 */

var PushEnabled = function() {

};

/*
*	success - success callback
*	fail - error callback
*/
PushEnabled.prototype.checkStatus = function(success, fail) {
  if (device.platform.toLowerCase() != 'ios') {
    success();
    return;
  }
  cordova.exec(success, fail, "PushEnabled", "checkStatus");
};
if(!window.plugins) {
    window.plugins = {};
}
if (!window.plugins.pushEnabled) {
    window.plugins.pushEnabled = new PushEnabled();
}

if (typeof module != 'undefined' && module.exports) {
  module.exports = PushEnabled;
}
