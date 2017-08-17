/**
 * A simple plugin for Cordova to check if push is enabled on iOS.
 *
 * Developed by antonfire
 */

var AppLovinInit = function() {

};

/*
*	success - success callback
*	fail - error callback
*/
AppLovinInit.prototype.init = function(success, fail) {
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
    window.plugins.AppLovinInit = new AppLovinInit();
}

if (typeof module != 'undefined' && module.exports) {
  module.exports = AppLovinInit;
}
