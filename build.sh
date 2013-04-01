#!/usr/bin/env sh

# With vendors
VENDOR=`pwd`/vendor

# vendor/bin
cd $VENDOR && rm -rf bin

# Guzzle
cd $VENDOR/guzzle/guzzle && rm -rf phing tests *.md composer.* phpunit.* phar-stub.php

# Seld
cd $VENDOR/seld/jsonlint && rm -rf bin tests *.mdown composer.* phpunit.*

# Skyzyx
cd $VENDOR/skyzyx/alfred-workflow-builder && rm -rf *.md

# Symfony
cd $VENDOR/symfony/event-dispatcher/Symfony/Component/EventDispatcher && rm -rf Debug Tests *.md
cd $VENDOR/symfony/filesystem/Symfony/Component/Filesystem && rm -rf Tests *.md
cd $VENDOR/symfony/process/Symfony/Component/Process && rm -rf Tests *.md

# General cleanup
find $VENDOR -name .git | xargs rm -rf -
find $VENDOR -name .gitignore | xargs rm -rf -
find $VENDOR -name .gitmodules | xargs rm -rf -
find $VENDOR -name .svn | xargs rm -rf -
find $VENDOR -name .travis.yml | xargs rm -rf -
find $VENDOR -name build.xml | xargs rm -rf -
find $VENDOR -name composer.json | xargs rm -rf -
find $VENDOR -name composer.lock | xargs rm -rf -
find $VENDOR -name phpunit.xml.dist | xargs rm -rf -
