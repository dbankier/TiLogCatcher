# LogCatcher for Titanium

Catches Titanium Logs. Currently focused only TiExceptions.

## Install

The modules/zip files are in the repository. Add it to your project like you would any other native module.

Require the module with the following code:

~~~
var Logger = require("yy.logcatcher");
~~~


## Listen for Titanium Exceptions

~~~
Logger.addEventListener('error',function(e){
  /*
   *  Do what you like with the data.
   */
});
~~~

### event properties

#### ios

 * backtrace
 * sourceId
 * name
 * message
 * line

#### android
 * message
 * lineOffset
 * line
 * title
 * lineSource
 * sourceName

## Get Device Logs

Currently this is only for Android (a.k.a. logcat)

~~~
  var logcat_output = Logger.getDeviceLogs();
  alert(logcat_output);
~~~

## To Do

* Get Device Logs (iOS)
* Listen for all logs types (not just Titanium Exceptions)


### Licence: MIT
