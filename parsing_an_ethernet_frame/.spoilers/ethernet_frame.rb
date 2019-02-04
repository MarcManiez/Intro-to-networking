module Spoilers
  class EthernetFrame
    def initialize(ethernet_frame_bytes)
      @bytes = ethernet_frame_bytes
    end

    def destination_mac_address
      @bytes[0...6].unpack('H2H2H2H2H2H2').join(':')
    end

    def source_mac_address
      @bytes[6...12].unpack('H2H2H2H2H2H2').join(':')
    end

    def ether_type
      @bytes[12...14].unpack('n').first
    end

    def payload
      @bytes[14...@bytes.length]
    end
  end
end
