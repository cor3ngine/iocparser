#!/usr/bin/env ruby

require 'rexml/document'
include REXML

class IOCParser
  attr_reader :node_list

  def initialize(xmlfile)
    @xmlioc = init_xml(xmlfile)
    @node_list = nodes
  end

  public
    def type(attribute)
      arr_type = []

      XPath.each(@xmlioc, "//Context[@document='#{attribute}']") do |item|
        arr_type << item.attribute("search").value
      end
      return arr_type.uniq.sort
    end

    def value(type)
      arr_value = []

      XPath.each(@xmlioc, "//Context[@search='#{type}']/ancestor::IndicatorItem") do |item|
        value = item.attribute("id").value
        arr_value << XPath.match(@xmlioc, "//IndicatorItem[@id='#{value}']/Content").map {|el| el.text}
      end
      return arr_value
    end

  private
    def init_xml(file)
        iocfile = File.new(file)
        xmlfile = Document.new(iocfile)
      return xmlfile
    end

    def nodes
      arr_node = []

      XPath.each(@xmlioc, "//Context") do |item|
        arr_node << item.attribute("document").value
      end
      return arr_node
    end

end


ioc = IOCParser.new("test.ioc")
attribute = ioc.node_list
attribute.uniq.each do |item|
  puts "#{item} => #{attribute.select {|a| a === "#{item}"}.count} "
end
type = ioc.type("Network")
puts type
value = ioc.value("Network/DNS")
puts value
