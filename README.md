# SimpleDisplay

Showcase your Rails models easily.

**SimpleDisplay** aims to provide a flexible way to display your model
attribute and methods, so you can move from this:

```erb
<dl>
  <% if @book.title.present? %>
    <dt>Title</dt>
    <dd><%= @example.title %></dd>
  <% end %>

  <% if @example.price.present? %>
    <dt>Price</dt>
    <dd><%= number_with_currency @example.price %></dd>
  <% end %>
</dl>
```

To this:

```erb
<%= display_for @example do |d| %>
  <dl>
    <%= d.display :title %>
    <%= d.currency :price %>
  </dl>
<% end %>
```

This gem was inspired by [this
post](http://quickleft.com/blog/drying-your-views-with-dsl-s?utm_source=rubyweekly&utm_medium=email)
by Ben West in the Quick Left blog. Thank you! <3

## Installation

Add this line to your application's Gemfile:

    gem 'simple_display', github: 'mrcasals/simple_display'

And then execute:

    $ bundle

## Usage

*TODO: add some content here! Meanwhile, check the introduction of the README
file.*

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
