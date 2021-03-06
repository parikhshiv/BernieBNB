
Bernie BNB
==========

## Goal
We want to build an app to allow supporters to share their homes with others from out
of town and to help supporters on the road find lodging.

## How We're Doing It
* Rails 4.2.5
* Devise/ Omniauth for authentication with Facebook and google
* Geocoder gem to search by zipcode, using Bing geocoding API.


## Contributing
We have a channel on slack. Please e-mail buddhistsforbernie@gmail.com for an invite.
We would love your help.

### Steps
  1. Set up Facebook Developer account at https://developers.facebook.com then get your FACEBOOK_KEY and FACEBOOK_SECRET.
  2. Create Bing Maps key (BING_GEOCODE_ID) at https://msdn.microsoft.com/en-us/library/ff428642.aspx
  3. Based on figaro gem, create a config/application.yml file and set values.

> USERNAME: TBD

> PASSWORD: TBD

> IP: http://localhost:3000/

> FACEBOOK_KEY: "TBD"

> FACEBOOK_SECRET: TBD

> BING_GEOCODE_ID: TBD

  4. To set up development environment, do the following:
    * Fork the repo at https://github.com/SandersForPresident/BernieBNB
    * Cloned it locally.
    * Do above steps 1-3. 
    * Run "rake db:create".
    * Run "rake db:migrate".
    * Run "rake db:setup".
    * Run "rake" to run the tests.
    * Run "git remote add upstream https://github.com/SandersForPresident/BernieBNB.git" so you can keep in sync with original project by running "git pull upstream master".