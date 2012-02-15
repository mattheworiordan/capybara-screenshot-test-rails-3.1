# encoding: UTF-8

require 'spec_helper'

describe Object do
  describe '#this_method_does_not_exist' do
    it 'should return true' do
      subject.this_method_does_not_exist.should == true
    end
  end
end