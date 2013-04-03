# coding: utf-8
require 'spec_helper'

describe LTSV::Logger::Logger do
  context '#initialize' do
    let(:logger) { LTSV::Logger::Logger.new(RSpec.configuration.test_log_path) }

    it 'formatter class is LTSVFormatter' do
      logger.formatter.should be_an_instance_of(LTSV::Logger::Logger::LTSVFormatter)
    end
  end
end

describe LTSV::Logger::Logger::LTSVFormatter do
  context '#call' do
    let(:logger) { LTSV::Logger::Logger.new(RSpec.configuration.test_log_path) }
    let(:formatter) { LTSV::Logger::Logger::LTSVFormatter.new }

    it 'return ltsv when argument is Hash' do
      time = Time.now
      msg = { foo: 'foo1', bar: 'bar1' }
      formatter.call(logger.level, time, 'hoge', msg).should eq("time:#{time}\tfoo:foo1\tbar:bar1\n")
    end

    it 'return ltsv when argument is String' do
      time = Time.now
      msg = "foo"
      formatter.call(logger.level, time, 'hoge', msg).should eq("time:#{time}\tmessage:foo\n")
    end
  end
end
