# rake-rails

Reduces the confusion for newcomers by allowing `rails` commands to be run via
`rake`. Inspiration from [@j3](http://twitter.com/j3)'s presentation
[Adventures on the Golden Path](https://speakerdeck.com/u/j3/p/adventures-on-the-golden-path).

## Usage

Add to your Gemfile:

```ruby
gem 'rake-rails'
```

Install via:

```
$ bundle install
```

Use right away!

```
$ rake generate model Post title:string
$ rake console
$ rake server
```
