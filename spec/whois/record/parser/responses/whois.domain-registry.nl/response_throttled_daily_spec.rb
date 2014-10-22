# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.domain-registry.nl/response_throttled_daily.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.domain-registry.nl.rb'

describe Whois::Record::Parser::WhoisDomainRegistryNl, "response_throttled_daily.expected" do

  subject do
    file = fixture("responses", "whois.domain-registry.nl/response_throttled_daily.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#response_throttled?" do
    it do
      expect(subject.response_throttled?).to be_truthy
    end
  end
end
