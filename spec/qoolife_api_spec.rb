# encoding: utf-8
require 'spec_helper'

describe QoolifeApi do
  describe "hello world" do
    it "should answer world when said hello" do
      expect(QoolifeApi::Hello.say_hello).to eq({ 'hello' => 'world' })
    end
  end

  describe "journal entries" do
    it "should return 401 unauthorized for unauthorized user" do
      expect { QoolifeApi::JournalEntry.all }.to raise_error(ActiveResource::UnauthorizedAccess)
    end

    it "should list journal entries for authorized user" do
      authorize!

      all_entries = QoolifeApi::JournalEntry.all

      expect(all_entries.size).to eq(20)
      expect(all_entries.first).to be_a(QoolifeApi::JournalEntry)
      expect(all_entries.first.attributes.keys).to eq(["id", "user_id", "author_id", "body", "date", "created_at", "measurements", "questionnaire_responses"])
    end
  end

  def authorize!
    # use your own credentials to test
    QoolifeApi::Base.authorize 'youruser', 'yourpassword'
  end
end
