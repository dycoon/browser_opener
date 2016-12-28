
# What is this

browser_opener opens chrome with urls on windows or ubuntu with delaying every page.
A little light.

# usage

Show open_urls.rb.

```ruby
require "./browser_opener"
BrowserOpener.new.open [
  "https://www.google.co.jp/",
  "https://twitter.com/",
]
```

Modify url list, and run following command.

```
ruby open_urls.rb
```

On windows, execute run.bat is same.

