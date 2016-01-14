# TDiary::Cache::Null

Null adapter for tDiary cache.

This gem is useful for the case when:

 - For development (disable cache for debug purpose)
 - When storage (RDB, MongoDB) is faster than cache (memcached, redis).

## Installation

Add this line to your tDiary's Gemfile.local:

    gem 'tdiary-cache-null'

And then execute:

    $ bundle

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

