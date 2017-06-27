Magento 2 Travis CI scripts
===========================

The purpose of this package is to provide a simple, clean and time saving way  
to create Travis CI configuration file (`.travis.yml`) for Magento 2 modules.

## How to use?

* Use the provided sample configuration file (`.travis.yml.sample`) in this package,  
to create your own configuration file.
* In configuration file set your vendor (`VENDOR_NAME`) and module (`MODULE_NAME`) names.
* You could add your own test scripts under `script` step.
* Or, in order to keep things clean and organized, you could put your test scripts inside your module,  
and call them with one command from configuration file.  
(e.g. `./${MAGENTO_DIR}/${MODULE_DEPLOY_PATH}/dev/travis_ci/script.sh`)

## Covered tests

* [PHP_CodeSniffer (PHPCS)](https://github.com/squizlabs/PHP_CodeSniffer).  
Uses Magento EQP rules and sniffs (https://github.com/magento/marketplace-eqp).
* [PHP Mess Detector (PHPMD)](https://github.com/phpmd/phpmd).
* [PHP Copy/Paste Detector (PHPCPD)](https://github.com/sebastianbergmann/phpcpd).
