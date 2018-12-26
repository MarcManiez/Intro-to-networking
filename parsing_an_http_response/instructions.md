# Parsing an HTTP response

The aim of this exercise is to learn how to read header documentation for networking protocols, and to learn how to handle binary data. To this end, use the [sandbox](./sandbox.rb) to read the [binary file](./http_response.bin) containing an HTTP response and complete the class methods on the [`HTTPResponse` class](./http_response.rb).

Run `ruby test.rb` to test, but avoid looking into the file if you don't want to be spoiled.

## Hints

If you're stuck, maybe these can help:

1. `IO#binread` is your friend for reading binary data in ruby.
2. If trying to split a string containing `\r\n`, remember that you'll need double quotes to do that 🙃
