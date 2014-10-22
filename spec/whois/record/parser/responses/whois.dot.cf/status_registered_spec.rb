# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.dot.cf/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.dot.cf.rb'

describe Whois::Record::Parser::WhoisDotCf, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.dot.cf/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#status" do
    it do
      expect(subject.status).to eq(:registered)
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to be_falsey
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to be_truthy
    end
  end
  describe "#created_on" do
    it do
      expect(subject.created_on).to be_a(Time)
      expect(subject.created_on).to eq(Time.parse("2013-03-28 00:00:00"))
    end
  end
  describe "#updated_on" do
    it do
      expect { subject.updated_on }.to raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to eq(nil)
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(5)
      expect(subject.nameservers[0]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[0].name).to eq("dns5.nettica.com")
      expect(subject.nameservers[1]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[1].name).to eq("dns1.nettica.com")
      expect(subject.nameservers[2]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[2].name).to eq("dns2.nettica.com")
      expect(subject.nameservers[3]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[3].name).to eq("dns3.nettica.com")
      expect(subject.nameservers[4]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[4].name).to eq("dns4.nettica.com")
    end
  end
end
