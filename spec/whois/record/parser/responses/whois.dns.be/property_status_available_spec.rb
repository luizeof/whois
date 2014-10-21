# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.dns.be/property_status_available.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.dns.be.rb'

describe Whois::Record::Parser::WhoisDnsBe, "property_status_available.expected" do

  subject do
    file = fixture("responses", "whois.dns.be/property_status_available.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#status" do
    it do
      expect(subject.status).to eq(:available)
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to be_truthy
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to be_falsey
    end
  end
end
