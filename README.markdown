# Foreman

## Installation

    gem install foreman_restarable

## Description

http://blog.daviddollar.org/2011/05/06/introducing-foreman.html

## Restartable Addendum

This fork of foreman has support for restarting invidiual Procfile
processes without forcing a restart of them all.

This is personally useful to restart spork and Resque workers when I
switch branches, and not force a restart of Redis, or my web processes.

## Manual

See the [man page](http://ddollar.github.com/foreman) for usage.

## Manual - Restarting

Restarting is easy.

    $ foreman restart [process_name]

Where `process_name` is from your `Procfile`.

In theory, it should just work.  Fork and pull request if you have
updates.

## Authorship

Modified by Jon Moses
Created by David Dollar

Patches contributed by:

* Adam Wiggins
* clifff
* Dan Peterson
* Jay Zeschin
* Keith Rarick
* Ricardo Chimal, Jr

## License

MIT
