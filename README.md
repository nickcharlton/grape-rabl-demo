# grape-rabl-demo

_This is no longer maintained, but should serve as a useful example._

This is an example using [Grape][] & [Rabl][], hosted inside a [Rails][]
application to demonstrate building out a basic API. It exposes two models,
`User` and `Organisation`, with routes hosted at the root (i.e.: `/users`). It
doesn't consider versioning.

## Usage

It's loaded just like a typical [Rails][] application:

```
bundle install
bundle exec rails server
```

You can then access it at `http://localhost:3000`.

## Testing

Tests are implemented using [RSpec][].

```
bundle exec rake spec
```

## Author

Copyright (c) 2015 Nick Charlton <nick@nickcharlton.net>.

[Grape]: https://github.com/intridea/grape
[Rabl]: https://github.com/nesquena/rabl
[Rails]: http://guides.rubyonrails.org/
[RSpec]: http://rspec.info
