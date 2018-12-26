module Spoilers
  class HTTPResponse
    def initialize(http_message_bytes)
      @bytes = http_message_bytes
    end

    def start_line
      @bytes.split("\r\n", 2)[0]
    end

    def status
      start_line.split(' ')[1].to_i
    end

    def headers
      headers_hash = {}
      start_line_and_headers = @bytes.split("\r\n\r\n", 2)[0]
      headers_array = start_line_and_headers.split("\r\n") - [start_line]
      headers_array.each do |header|
        split_headers = header.split(': ')
        headers_hash[split_headers[0]] = split_headers[1]
      end
      headers_hash
    end

    def body
      @bytes.split("\r\n\r\n", 2)[1]
    end
  end
end
