require './.spoilers/http_response'
require './http_response'

def test_method(method_symbol)
  http_response_path = File.join(File.dirname(__FILE__), './http_response.bin')
  raw_http_response = IO.binread(http_response_path)

  expected_response = Spoilers::HTTPResponse.new(raw_http_response)
  actual_response = HTTPResponse.new(raw_http_response)

  if expected_response.send(method_symbol) == actual_response.send(method_symbol)
    p "Correct #{method_symbol} value"
  else
    p "Incorrect #{method_symbol} value"
  end
end

test_method(:start_line)
test_method(:status)
test_method(:headers)
test_method(:body)
