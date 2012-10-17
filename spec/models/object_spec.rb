# encoding: UTF-8

require 'spec_helper'

describe Object do
  describe '#this_method_does_not_exist' do
    it 'should return true (\e[33mexpect failure\e[0m)' do
      subject.this_method_does_not_exist.should == true
    end

    it 'should return true (\e[32mexpect success\e[0m)' do
      subject.kind_of?(Object).should == true
    end
  end
end