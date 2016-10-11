#!/bin/sh

# Load a webpage using phantomjs and save it to a file.
# This provides a nice screen capture of the entire page.

set -o nounset
set -o errexit

capture() {
    # feed temporary JS doc to phantomjs via /dev/stdin ('-' doesn't work)
    (
        cat <<-EOF
    var page = require('webpage').create(),
        url = "$1",
        outfile = "$2";

    page.onResourceRequested = function (req) {
        console.log('requested: ' + JSON.stringify(req, undefined, 4));
    };

    page.onResourceReceived = function (res) {
        console.log('received: ' + JSON.stringify(res, undefined, 4));
    };

    page.viewportSize = { width: 1920, height: 1080 };
    page.clipRect = { top: 0, left: 0, width: 1920, height: 1080 };

    page.open(url, function() {
        window.setTimeout(function () {
            page.render(outfile);
            phantom.exit();
        }, 5000);
    });
EOF
    ) | exec phantomjs /dev/stdin;
}

if [ "$#" -lt 2 ] ; then
    echo "usage: $0 URL OUTFILE"
    exit 1
fi

case `uname` in
    *CYGWIN*) echo "Don't support windows"; exit 1;;
esac

capture "$1" "$2"