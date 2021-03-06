# PHP

## Documentation

[http://www.php.net/](http://www.php.net/)

## Installation

### PHP 7.2

```bash
brew install php@7.2
```

#### PATH Issues

Following an upgrade to Mojave, I had some challenges getting PHP 7.2 to work properly with [Laravel Valet](https://laravel.com/docs/master/valet). Homebrew was letting me know that PHP 7.2 is "keg-only" so you have two force creation of symlinks to get it working properly.

```bash
brew link php@7.2 --force
```

Alternatively, if you do not need the symlinks, you can simply add the `bin` and `sbin` folders to your system path:

```bash
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
```
