var exec = require('cordova/exec');

exports.vibrate = function (arg0, success, error) {
    exec(success, error, 'Vibrate', 'vibrate', [arg0]);
};
