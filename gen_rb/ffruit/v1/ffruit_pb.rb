# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: ffruit/v1/ffruit.proto

require 'google/protobuf'

require 'dacs/v1/dacs_pb'
require 'oneshelf/v1/oneshelf_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("ffruit/v1/ffruit.proto", :syntax => :proto3) do
    add_message "ffruit.v1.FfruitConfig" do
      optional :gorm_db_engine, :string, 1
      optional :gorm_db_url, :string, 2
      optional :dacs_xmitter_tcp_endpoint, :string, 3
      optional :dacs_weight_tcp_endpoint, :string, 4
      optional :mqtt_uri, :string, 5
      optional :mqtt_username, :string, 6
      optional :mqtt_password, :string, 7
      optional :mqtt_client_id, :string, 8
      optional :uksr_state, :string, 9
      optional :mineral_path, :string, 10
      optional :watch_zone, :string, 11
      optional :attach_rssi, :int32, 12
      optional :detach_rssi, :int32, 13
      optional :inventory_settling_rounds, :int32, 15
      optional :proceed_relay_letter, :string, 20
      optional :proceed_relay_negative_logic, :bool, 21
      optional :proceed_relay_pulse_ms, :uint32, 22
      optional :error_relay_letter, :string, 30
      optional :error_relay_negative_logic, :bool, 31
      optional :error_relay_pulse_ms, :uint32, 32
      optional :tag_ok_relay_letter, :string, 35
      optional :tag_ok_relay_negative_logic, :bool, 36
      optional :tag_ok_relay_pulse_ms, :uint32, 37
      optional :box_input_letter, :string, 41
      optional :box_input_negative_logic, :bool, 42
      optional :box_relay_pulse_ms, :uint32, 43
      optional :enable_oled, :bool, 50
      optional :enable_lcd1602, :bool, 51
      optional :enable_hdmi, :bool, 52
      optional :dacs_cmd_p_defaults, :message, 60, "dacs.v1.DacsCmdP"
      optional :dacs_redo_preset_cmd_p_defaults, :message, 61, "dacs.v1.DacsCmdP"
      map :dacs_cmd_p_presets, :int32, :message, 62, "dacs.v1.DacsCmdP"
      optional :oneshelf_config, :message, 99, "oneshelf.v1.OneshelfConfig"
      optional :box_log_sync_url, :string, 100
      optional :debug_dacs_cmd_at, :bool, 110
    end
    add_message "ffruit.v1.FfruitStateMessage" do
      optional :error, :int32, 1
      optional :antenna_no, :int32, 2
      optional :state, :string, 3
    end
    add_message "ffruit.v1.DacsSimEvent" do
      optional :dacs_data, :bytes, 1
      optional :dacs_weight, :int32, 2
    end
    add_message "ffruit.v1.BoxSimEvent" do
      optional :arrived, :int32, 1
    end
    add_message "ffruit.v1.FfruitStatus" do
      optional :error, :string, 1
      optional :message, :string, 2
    end
    add_message "ffruit.v1.FfruitSignEpc" do
      optional :epc, :string, 1
      optional :app_id, :bytes, 2
      optional :key, :bytes, 3
    end
    add_message "ffruit.v1.FfruitRegisterBox" do
      optional :epc, :string, 1
      optional :app_id, :bytes, 2
    end
    add_message "ffruit.v1.FfruitUserBankInit" do
      optional :epc, :string, 1
      optional :app_id, :bytes, 2
    end
    add_enum "ffruit.v1.FfruitSpecialCommand" do
      value :IGNORE_ME, 0
      value :REDO_PRESET, 1
    end
  end
end

module Ffruit
  module V1
    FfruitConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ffruit.v1.FfruitConfig").msgclass
    FfruitStateMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ffruit.v1.FfruitStateMessage").msgclass
    DacsSimEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ffruit.v1.DacsSimEvent").msgclass
    BoxSimEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ffruit.v1.BoxSimEvent").msgclass
    FfruitStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ffruit.v1.FfruitStatus").msgclass
    FfruitSignEpc = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ffruit.v1.FfruitSignEpc").msgclass
    FfruitRegisterBox = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ffruit.v1.FfruitRegisterBox").msgclass
    FfruitUserBankInit = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ffruit.v1.FfruitUserBankInit").msgclass
    FfruitSpecialCommand = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ffruit.v1.FfruitSpecialCommand").enummodule
  end
end
