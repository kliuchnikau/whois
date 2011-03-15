# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/record/parser/responses/whois.nic.ir/status_registered_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.ir.rb'

describe Whois::Record::Parser::WhoisNicIr, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.nic.ir/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#status" do
    it do
      @parser.status.should == :registered
    end
  end
  context "#available?" do
    it do
      @parser.available?.should == false
    end
  end
  context "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  context "#created_on" do
    it do
      lambda { @parser.created_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse("2008-11-09")
    end
  end
  context "#expires_on" do
    it do
      lambda { @parser.expires_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(4).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].name.should == "ns3.google.com"
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].name.should == "ns4.google.com"
      @parser.nameservers[2].should be_a(_nameserver)
      @parser.nameservers[2].name.should == "ns1.google.com"
      @parser.nameservers[3].should be_a(_nameserver)
      @parser.nameservers[3].name.should == "ns2.google.com"
    end
  end
end