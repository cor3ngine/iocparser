# ioccmd

ioccmd is a command line utility to parse Indicator of Compromise (IOC) files

## Usage

List of IOC attributes:

    $ ruby ioccmd.rb -f test.ioc -e ATTRS
      [+] Opening test.ioc
      [+] List of Attributes:
      Network: 
      3
      PortItem: 
      2 
      UrlHistoryItem: 
      3
      FileItem: 
      246
      ProcessItem: 
      2
      [+] ==== 

List of attribute types of UrlHistoryItem:

    $ ruby ioccmd.rb -f test.ioc -t UrlHistoryItem
      [+] Opening test.ioc
      UrlHistoryItem/URL

List of values inside UrlHistoryItem/URL:

    $ ruby ioccmd.rb -f test.ioc -v UrlHistoryItem/URL
      [+] Opening test.ioc
      ctx-na.purpledaily.com
      walk.bigish.net
      ftel.marsbrother.com

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
