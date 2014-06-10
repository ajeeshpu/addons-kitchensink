AppGyver Steroids Add-ons Kitchensink
===========

This project demonstrates the features of [Steroids Add-ons](http://www.appgyver.com/steroids/addons/), which gives you access to a collection of premium, turn-key implementations for common mobile app features. Currently included add-ons are:

* Facebook
* Geolocation
* OAuth.io
* Urban Airship (requires custom configuration to work)

## Installation

Steroids Add-ons is only available to subscribers. You can get a subscription on the [AppGyver website](http://www.appgyver.com/steroids/addons/).

Once you've got an active Add-ons subscription, you can go to the [AppGyver Add-ons page](http://addons.appgyver.com) for instructionson how to install the Steroids Add-ons JavaScript file via Bower. You can also find links to the Steroids Add-ons Guides and API docs there.

Once you've installed the Add-ons JavaScript file, run `$ steroids update` to install all other required Bower components.

## Running

Run

    $ steroids connect

in the project root, then scan the QR code with [AppGyver Scanner for iOS](https://itunes.apple.com/us/app/appgyver-scanner/id575076515).

## Configuration

The `www/config.xml` file holds configuration options for the Add-ons. Note that to change the Facebook App ID, you need to build a custom scanner.

### Urban Airship

To see the Urban Airship plugin at work you will need to build a custom scanner and set-up your Urban Airship API keys in `www/config.ios.xml`. For more info see [Urban Airship Add-on Setup Guide](http://guides.appgyver.com/steroids-addons/urban-airship/setup/).
