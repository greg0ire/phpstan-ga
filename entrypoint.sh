#!/bin/sh -l

NO_DEV="--no-dev"
if [ "$REQUIRE_DEV" = "true" ]; then
    NO_DEV=""
fi

echo "::group::composer install"
composer install --no-scripts --no-progress $NO_DEV
echo "::endgroup::"
/composer/vendor/bin/phpstan $*
