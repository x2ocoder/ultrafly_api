# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: ufly/v1/ufly.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("ufly/v1/ufly.proto", :syntax => :proto3) do
    add_message "ufly.v1.GpioRead" do
      optional :pin, :int32, 1
      optional :value, :int32, 2
      optional :initial_state, :bool, 3
      optional :name, :string, 4
    end
    add_message "ufly.v1.GpioState" do
      repeated :gpio_reads, :message, 1, "ufly.v1.GpioRead"
    end
    add_message "ufly.v1.GpioWriteRequest" do
      optional :request_id, :uint32, 1
      optional :pin, :uint32, 2
      optional :pin_name, :string, 3
      optional :value, :uint32, 4
      optional :pulse_ms, :uint32, 5
    end
    add_message "ufly.v1.GpioWriteResponse" do
      optional :request_id, :uint32, 1
      optional :success, :bool, 2
      optional :message, :string, 3
      optional :pin, :uint32, 4
      optional :value, :uint32, 5
      optional :pulse_ms, :uint32, 6
      optional :pin_name, :string, 7
    end
    add_message "ufly.v1.URadarStateMessage" do
      optional :power, :int32, 1
      optional :antenna_no, :int32, 2
      optional :message, :string, 3
    end
    add_message "ufly.v1.UTagMessage" do
      optional :rssi, :int32, 2
      optional :count, :int32, 3
      optional :antenna_no, :int32, 5
      optional :zone, :string, 6
    end
    add_message "ufly.v1.URadarEventMessage" do
      optional :epc, :string, 1
      optional :type, :string, 2
      optional :old_state, :string, 3
      optional :new_state, :string, 4
      optional :old_zone, :string, 5
      optional :new_zone, :string, 6
      optional :old_rssi, :int32, 7
      optional :new_rssi, :int32, 8
      optional :old_antenna_no, :int32, 9
      optional :new_antenna_no, :int32, 10
      repeated :utags, :message, 11, "ufly.v1.UTagMessage"
    end
    add_message "ufly.v1.UBlipReadRequest" do
      optional :request_id, :int32, 1
      optional :epc, :string, 2
      optional :bank, :int32, 3
      optional :offset, :int32, 4
      optional :words, :int32, 5
      optional :disable_epc_lookup, :bool, 6
      optional :antenna_no, :int32, 7
    end
    add_message "ufly.v1.UBlipReadResponse" do
      optional :request_id, :int32, 1
      optional :success, :bool, 2
      optional :message, :string, 3
      optional :epc, :string, 4
      optional :bank, :int32, 5
      optional :data, :bytes, 6
    end
    add_message "ufly.v1.UBlipWriteRequest" do
      optional :request_id, :int32, 1
      optional :epc, :string, 2
      optional :bank, :int32, 3
      optional :data, :bytes, 4
      optional :offset, :int32, 5
      optional :words, :int32, 6
      optional :access_password, :bytes, 7
    end
    add_message "ufly.v1.UBlipWriteResponse" do
      optional :request_id, :int32, 1
      optional :success, :bool, 2
      optional :message, :string, 3
      optional :epc, :string, 4
    end
    add_message "ufly.v1.UBlipLockRequest" do
      optional :request_id, :int32, 1
      optional :epc, :string, 2
      optional :area, :int32, 3
      optional :type, :int32, 4
      optional :access_password, :bytes, 7
    end
    add_message "ufly.v1.UBlipLockResponse" do
      optional :request_id, :int32, 1
      optional :success, :bool, 2
      optional :message, :string, 3
      optional :epc, :string, 4
    end
    add_message "ufly.v1.UModeSet" do
      optional :request_id, :int32, 1
      optional :inventory_enable, :bool, 2
      optional :inventory_disable, :bool, 3
      optional :times, :int32, 4
      optional :auto_user_bank, :bool, 5
      optional :on_item_abort_inventory, :bool, 6
    end
    add_message "ufly.v1.UltraflySignedMessage" do
      optional :topic, :bytes, 1
      optional :data, :bytes, 2
      optional :sig, :bytes, 3
    end
  end
end

module Ufly
  module V1
    GpioRead = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ufly.v1.GpioRead").msgclass
    GpioState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ufly.v1.GpioState").msgclass
    GpioWriteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ufly.v1.GpioWriteRequest").msgclass
    GpioWriteResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ufly.v1.GpioWriteResponse").msgclass
    URadarStateMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ufly.v1.URadarStateMessage").msgclass
    UTagMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ufly.v1.UTagMessage").msgclass
    URadarEventMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ufly.v1.URadarEventMessage").msgclass
    UBlipReadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ufly.v1.UBlipReadRequest").msgclass
    UBlipReadResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ufly.v1.UBlipReadResponse").msgclass
    UBlipWriteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ufly.v1.UBlipWriteRequest").msgclass
    UBlipWriteResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ufly.v1.UBlipWriteResponse").msgclass
    UBlipLockRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ufly.v1.UBlipLockRequest").msgclass
    UBlipLockResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ufly.v1.UBlipLockResponse").msgclass
    UModeSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ufly.v1.UModeSet").msgclass
    UltraflySignedMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ufly.v1.UltraflySignedMessage").msgclass
  end
end