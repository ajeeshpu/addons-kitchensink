AppGyver Steroids Addons Kitchensink
===========

This project demonstrates the features of [Steroids Addons](http://www.appgyver.com/steroids/addons/), which gives you access to a collection of premium, turn-key implementations for common mobile app features. Currently included addons are:

* Facebook
* OAuth.io
* Geolocation

## Installation

Steroids Addons is only available to subscribers. You can get a subscription on the [AppGyver website](http://www.appgyver.com/steroids/addons/).

Once you've got an active Addons subscription, you can download the `steroids.addons.js` file from the [AppGyver Cloud](http://cloud.appgyver.com). It is available on the **Addons** tab of a cloud-deployed application. Include it in the `www/components/steroids-addons/steroids.addons.js` folder (the `<script>` tag that loads the JS file is in `app/views/layouts/application.html`). You can also find links to the Steroids Addons Guides and API docs there.
  
(Run `$ steroids deploy` in a Steroids project folder to deploy an application to the cloud if you haven't done this before.)

## Running

Run

    $ steroids connect

in the project root, then scan the QR code with [AppGyver Scanner for iOS](https://itunes.apple.com/us/app/appgyver-scanner/id575076515).

## Configuration

The `www/config.xml` file holds configuration options for the Addons. Note that to change the Facebook App ID, you need to build a custom scanner.
