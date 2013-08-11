# Iocparser

iocparser is a command line utility to parse and query Mandiant XML Indicator of Compromise (IOC) files. 

## Installation

Download and unzip the master zip from github and execute the following into the iocparser directory

    $ gem build ./iocparser.gemspec
    # gem install iocparser-0.0.1.gem

Or install it yourself as:

    $ gem install iocparser

## Usage

Print the structure of the IOC file with the number of items embedded into it
    $ iocparser -f test.ioc
      === IOC Items ===
      Network => 3 
      PortItem => 2 
      UrlHistoryItem => 3 
      FileItem => 246 
      ProcessItem => 2 
      === END ===

Print the type of an IOC item

    $ iocparser -f test.ioc -t Network
      Network/DNS

Print the values embedded into the IOC type

    $ iocparser -f test.ioc -v Network/DNS
      maliciousdomain1.com
      maliciousdomain2.net
      maliciousdomain3.org

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
