# OpenNDC :: NDC Sandbox

[![Circle CI - ndc-sandbox](https://circleci.com/gh/open-ndc/ndc-sandbox/tree/master.svg?style=shield)](https://circleci.com/gh/open-ndc/ndc-sandbox)
[![Join the chat at https://gitter.im/open-ndc/ndc-sandbox](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/open-ndc/ndc-sandbox?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Open-source NDC Sandbox for testing/development purposes.

[Check out here more about the scope of this project](https://github.com/open-ndc/ndc-sandbox/wiki).


## Features List

1. Planned NDC Messages:

  - AirShopping (supported)
  - FlightPrice (supported)
  - SeatAvailability (in progress)
  - ServiceList
  - ServicePrice
  - OrderCreate
  - OrderList
  - OrderRetrieve
  - OrderCancel

## Stack

- Ruby 2.2.2
- ActiveRecord 5
- PostgreSQL (tested on 9.x and 10.x)
- Redis


## Setup

1. Git clone this repo.
2. Install dependencies with `bundle install`
3. Update `config/database.yml` with your particular settings.
4. Run `rake db:create`
5. Run `rake db:migrate`
6. Run `rake db:fixtures:load[ID]` (ID is the id of a valid fixtures set. By default it will load 'FA')
7. Run `rackup` to start a local server (by default runs on port 9292)
8. Test the API by validating a NDC payload, here is a curl example: `curl -X POST -H "Content-Type: application/xml" --data @AirShopping.xml "http://ndc-sandbox.dev/api/ndc/"`

Note: if ion step 3 you get an error saying the database is not available, try creating it manually for both environments (dev and test) with:

```
$ createdb db_name
```


## Contribute

Any kind of software contribution, bug-report, and feedback is welcome and greatly appreciated.


## Credits

- Codebase started from [grape-skeleton](https://github.com/xurde/grape-skeleton)
- Thanks to [AirGateway](http://airgateway.net) who contributed actively to this project
- Thanks to *Flyiin* who contributed to this project

