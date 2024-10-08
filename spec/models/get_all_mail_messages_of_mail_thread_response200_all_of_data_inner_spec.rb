=begin
#Pipedrive API v1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenPipette::GetAllMailMessagesOfMailThreadResponse200AllOfDataInner
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenPipette::GetAllMailMessagesOfMailThreadResponse200AllOfDataInner do
  let(:instance) { OpenPipette::GetAllMailMessagesOfMailThreadResponse200AllOfDataInner.new }

  describe 'test an instance of GetAllMailMessagesOfMailThreadResponse200AllOfDataInner' do
    it 'should create an instance of GetAllMailMessagesOfMailThreadResponse200AllOfDataInner' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OpenPipette::GetAllMailMessagesOfMailThreadResponse200AllOfDataInner)
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "account_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "user_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "subject"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "snippet"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "read_flag"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Float', [0, 1])
      # validator.allowable_values.each do |value|
      #   expect { instance.read_flag = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "mail_tracking_status"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "has_attachments_flag"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Float', [0, 1])
      # validator.allowable_values.each do |value|
      #   expect { instance.has_attachments_flag = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "has_inline_attachments_flag"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Float', [0, 1])
      # validator.allowable_values.each do |value|
      #   expect { instance.has_inline_attachments_flag = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "has_real_attachments_flag"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Float', [0, 1])
      # validator.allowable_values.each do |value|
      #   expect { instance.has_real_attachments_flag = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "deleted_flag"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Float', [0, 1])
      # validator.allowable_values.each do |value|
      #   expect { instance.deleted_flag = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "synced_flag"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Float', [0, 1])
      # validator.allowable_values.each do |value|
      #   expect { instance.synced_flag = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "smart_bcc_flag"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Float', [0, 1])
      # validator.allowable_values.each do |value|
      #   expect { instance.smart_bcc_flag = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "mail_link_tracking_enabled_flag"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Float', [0, 1])
      # validator.allowable_values.each do |value|
      #   expect { instance.mail_link_tracking_enabled_flag = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "from"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "to"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "cc"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "bcc"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "body_url"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "mail_thread_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "draft"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "has_body_flag"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Float', [0, 1])
      # validator.allowable_values.each do |value|
      #   expect { instance.has_body_flag = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "sent_flag"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Float', [0, 1])
      # validator.allowable_values.each do |value|
      #   expect { instance.sent_flag = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "sent_from_pipedrive_flag"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Float', [0, 1])
      # validator.allowable_values.each do |value|
      #   expect { instance.sent_from_pipedrive_flag = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "message_time"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "add_time"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "update_time"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
