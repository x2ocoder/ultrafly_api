# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: omon/v1/omon.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("omon/v1/omon.proto", :syntax => :proto3) do
    add_message "omon.v1.OmonConfig" do
      optional :mqtt_uri, :string, 5
      optional :mqtt_username, :string, 6
      optional :mqtt_password, :string, 7
      optional :mqtt_client_id, :string, 8
      optional :uksr_state, :string, 9
      optional :mineral_path, :string, 10
    end
    add_message "omon.v1.OmonStateMessage" do
      optional :error, :int32, 1
      optional :antenna_no, :int32, 2
      optional :state, :string, 3
    end
    add_message "omon.v1.OmonStatus" do
      optional :error, :string, 1
      optional :message, :string, 2
    end
  end
end

module Omon
  module V1
    OmonConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("omon.v1.OmonConfig").msgclass
    OmonStateMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("omon.v1.OmonStateMessage").msgclass
    OmonStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("omon.v1.OmonStatus").msgclass
  end
end
