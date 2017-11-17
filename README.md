# Lita Starter

## Getting Started

Install [asdf][asdf] and [direnv][direnv].

```
direnv allow
asdf plugin-add ruby
brew install readline
RUBY_EXTRA_CONFIGURE_OPTIONS="--with-readline-dir=/usr/local/opt/readline" \
  asdf install
```

Verify `which ruby` yields `~/.asdf/shims/ruby`.
You may need to run `hash -rf` on zsh.

```
gem install bundler
bundle install --with development --binstubs
docker-compose up
bin/guard
bin/lita start
# !echo hello, world!
```

[asdf]: https://github.com/asdf-vm/asdf
[direnv]: https://direnv.net/