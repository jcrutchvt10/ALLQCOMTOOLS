#!/bin/sh

# Load a webpage using phantomjs and save it to a file.
# This provides a nice screen capture of the entire page.

set -o nounset
set -o errexit

capture() {
	js_file=`mktemp --suffix=.js`
	#trap "rm -f $js_file" EXIT

    cat <<JSEND > $js_file
    var page = require('webpage').create(),
        url = "$1",
		
    page.onResourceRequested = function (req) {
        //console.log('requested: ' + JSON.stringify(req, undefined, 4));
    };

    page.onResourceReceived = function (res) {
        //console.log('received: ' + JSON.stringify(res, undefined, 4));
    };

    page.open(url, function() {
        if (status != "success") {
            console.log('FAIL to load the address');
            phantom.exit(1);
        }

        window.setTimeout(function () {
            console.log(page.content);
            phantom.exit();
        }, 5000);
    });
JSEND

	case `uname` in
		*CYGWIN*) phantomjs `cygpath -awl $js_file` ;;
		*) phantomjs $js_file;;
	esac

}

if [ "$#" -lt 1 ] ; then
    echo "usage: $0 URL"
    exit 1
fi

capture "$1"