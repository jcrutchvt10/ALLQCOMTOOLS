#!/usr/bin/env phantomjs

"use strict";
var page = require('webpage').create(),
    system = require('system'),
    address;

if (system.args.length < 2) {
    console.log('Usage: purl.js URL ');
    phantom.exit(1);
} else {
    address = system.args[1];
    page.open(address, function (status) {
        if (status !== 'success') {
            console.log('Unable to load the address!');
            phantom.exit(1);
        } else {
            window.setTimeout(function () {
                console.log(page.content);
                phantom.exit();
            }, 5000);
        }
    });
}
