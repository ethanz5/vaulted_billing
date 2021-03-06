# vaulted_billing changelog

## [HEAD / unreleased][head.diff]

No significant changes.

## [1.3.1 / 2012-10-30][1.3.1.diff]

### Enhancements
* Identified and added MIT License information to the library and gemspec.

### Bug Fixes
* Bogus
  * Force credit_card.to_vaulted_billing for transaction methods. (reported and fixed by [@hoverlover][hoverlover])


## [1.3.0 / 2012-02-29][1.3.0.diff]

### Bug Fixes
* IP Commerce
  * Fix an issue where the card number may be received as a Numeric, resulting in an ArgumentError. (reported by [@pivotal-evo][pivotal-evo])
* NMI
  * Send correct Content-Type request header (from `text/xml` to `application/x-www-form-urlencoded`) correcting the Invalid Username issue. (reported by [@hoverlover][hoverlover])


## [1.2.1 / 2011-10-27][1.2.1.diff]

### Bug Fixes
* Bogus
  * Set the response_message for failed transaction responses.


## [1.2.0 / 2011-10-27][1.2.0.diff]

### Enhancements
* IP Commerce
  * Return AVS Response as hash split out with responses for the individual responses (No Match, No Response, etc).
  * Return CV Response as a string indicating what we receive from IP Commerce (Match, No Match, Invalid, etc).
* Bogus
  * Extended to allow for failure case testing with a magic card number.

### Bug Fixes
* IP Commerce
  * Fix hash to JSON conversion issue with symbolized key names.
    

## [1.1.6 / 2011-09-09][1.1.6.diff]

### Bug Fixes
* IP Commerce
  * Strip out non-alphanumeric characters from postal code. IP Commerce accepts a 1-9 digit code of only alphanumeric characters.
    

## [1.1.5 / 2011-09-06][1.1.5.diff]

### Enhancements
* IP Commerce
  * Add additional configuration options for transactions


## [1.1.4 / 2011-08-31][1.1.4.diff]

### Enhancements
* IP Commerce
  * Add support for test/production API end points


## [1.1.3 / 2011-08-31][1.1.3.diff]

### Enhancements
* IP Commerce
  * Update the path used for transactions to allow other libraries to reuse
  * Update certification scripts and add TMS certification scripts

### Bug Fixes
* IP Commerce
  * Correctly store the session key


## [1.1.2 / 2011-08-30][1.1.2.diff]

### Bug Fixes
* IP Commerce
  * Fix certification test issues


## [1.1.1 / 2011-08-30][1.1.1.diff]

### Enhancements
* IP Commerce
  * Added country to AVS data sent with credit cards
  * Implement add_customer_credit_card via $1.00 auth/void
  * Implement AVS / CVV checking
  * Add certification tests

### Bug Fixes
* IP Commerce
  * Handle session key non-renewals
  

## [1.1.0 / 2011-08-17][1.1.0.diff]

### Enhancements
* Add IP Commerce gateway
* Added HTTP endpoint failover support
* Added VaultedBilling::Error to collect exceptions raised
* Added optional options hash to gateway transaction calls
* Add MultiJson and MultiXml dependencies
* Allow development dependencies to be more flexible


[head.diff]: https://github.com/envylabs/vaulted_billing/compare/v1.3.1...master
[1.3.1.diff]: https://github.com/envylabs/vaulted_billing/compare/v1.3.0...v1.3.1
[1.3.0.diff]: https://github.com/envylabs/vaulted_billing/compare/v1.2.1...v1.3.0
[1.2.1.diff]: https://github.com/envylabs/vaulted_billing/compare/v1.2.0...v1.2.1
[1.2.0.diff]: https://github.com/envylabs/vaulted_billing/compare/v1.1.6...v1.2.0
[1.1.6.diff]: https://github.com/envylabs/vaulted_billing/compare/v1.1.5...v1.1.6
[1.1.5.diff]: https://github.com/envylabs/vaulted_billing/compare/v1.1.4...v1.1.5
[1.1.4.diff]: https://github.com/envylabs/vaulted_billing/compare/v1.1.3...v1.1.4
[1.1.3.diff]: https://github.com/envylabs/vaulted_billing/compare/v1.1.2...v1.1.3
[1.1.2.diff]: https://github.com/envylabs/vaulted_billing/compare/v1.1.1...v1.1.2
[1.1.1.diff]: https://github.com/envylabs/vaulted_billing/compare/v1.1.0...v1.1.1
[1.1.0.diff]: https://github.com/envylabs/vaulted_billing/compare/v1.0.2...v1.1.0

[pivotal-evo]: https://github.com/pivotal-evo
[hoverlover]: https://github.com/hoverlover
