Magento 2 Travis CI scripts
===========================

The purpose of this package is to provide a simple, clean and time saving way  
to create Travis CI configuration file (`.travis.yml`) for Magento 2 modules.

## What is continuous integration (CI)?
Continuous integration is the practice of merging all developer  
working copies to a shared mainline several times a day,  
in order to prevent integration problems.

([Click here to know more about continuous integration](https://en.wikipedia.org/wiki/Continuous_integration))

## What is Travis CI?
Travis CI is a hosted, distributed continuous integration service  
used to build and test software projects hosted at GitHub.

([Click here to know more about Travis CI](https://en.wikipedia.org/wiki/Travis_CI))  
([For documentation, click here](https://docs.travis-ci.com/))

## How to use?

* Use the provided configuration distribution file (`.travis.yml.dist`) in this package,  
to create your own configuration file.
* In configuration file set your vendor (`VENDOR_NAME`) and module (`MODULE_NAME`) names.
* You could add your own test scripts under `script` step.
* Or, in order to keep things clean and organized, you could put your test scripts inside your module,  
and call them with one command from configuration file.  
(e.g. `./${MAGENTO_DIR}/${MODULE_DEPLOY_PATH}/dev/travis_ci/script.sh`)

## Covered tests
Tests that are already included in the scripts.

* [PHP_CodeSniffer (PHPCS)](https://github.com/squizlabs/PHP_CodeSniffer).
(Uses [Magento EQP](https://github.com/magento/marketplace-eqp) rules and sniffs)
* [PHP Mess Detector (PHPMD)](https://github.com/phpmd/phpmd).
* [PHP Copy/Paste Detector (PHPCPD)](https://github.com/sebastianbergmann/phpcpd).
