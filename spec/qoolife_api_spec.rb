# encoding: utf-8
require 'spec_helper'

describe QoolifeApi do
  describe "hello world" do
    it "should answer world when said hello" do
      expect(QoolifeApi::Hello.say_hello).to eq({ 'hello' => 'world' })
    end
  end
end
