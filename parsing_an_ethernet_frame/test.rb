require './.spoilers/ethernet_frame'
require './ethernet_frame'

def test_method(method_symbol)
  ethernet_frame_path = File.join(File.dirname(__FILE__), './ethernet_frame.bin')
  raw_ethernet_frame = IO.binread(ethernet_frame_path)

  expected_frame = Spoilers::EthernetFrame.new(raw_ethernet_frame)
  actual_frame = EthernetFrame.new(raw_ethernet_frame)

  if expected_frame.send(method_symbol) == actual_frame.send(method_symbol)
    p "Correct #{method_symbol} value"
  else
    p "Incorrect #{method_symbol} value"
  end
end

test_method(:destination_mac_address)
test_method(:source_mac_address)
test_method(:ether_type)
test_method(:payload)
