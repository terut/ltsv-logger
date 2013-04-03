# coding: utf-8
require 'spec_helper'

describe LTSV do
  context 'shortcut method' do
    context '.logger' do
      before do
        LTSV::Logger.open(RSpec.configuration.test_log_path)
      end

      it 'module has logger instance' do
        LTSV.logger.should be_an_instance_of(LTSV::Logger::Logger)
      end
    end
  end
end

describe LTSV::Logger do
  context 'logger method' do
    context '.open' do
      before do
        LTSV::Logger.open(RSpec.configuration.test_log_path)
      end

      it 'module has logger instance' do
        LTSV::Logger.logger.should be_an_instance_of(LTSV::Logger::Logger)
      end
    end
  end
end
