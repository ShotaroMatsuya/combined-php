# phpunit course

## installation

```bash
# install phpunit as devdependencies
composer require --dev phpunit/phpunit
# register a command  as shortcut
alias phpunit="./vendor/phpunit/phpunit/phpunit"
# confirm phpunit version
phpunit --version
PHPUnit 10.2.5 by Sebastian Bergmann and contributors.
```

### option

`--bootstrap` option:  
this option allows us to run some code before the tests run

```bash
phpunit --bootstrap='vendor/autoload.php'
```

## mockery

Mockery is a mock object framework that offers an alternative to this with a different way of defining and working with mock objects, plus some additional functionality that phpunit doesn't provide.

```bash
composer require mockery/mockery --dev

```