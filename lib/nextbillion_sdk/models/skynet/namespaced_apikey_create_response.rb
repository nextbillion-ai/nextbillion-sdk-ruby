# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      # @see NextbillionSDK::Resources::Skynet::NamespacedApikeys#create
      class NamespacedApikeyCreateResponse < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute error
        #   Returns the error type in case of any error. If there is no error, then this
        #   field is absent in the response.
        #
        #   @return [String, nil]
        optional :error, String

        # @!attribute message
        #   Returns the error message in case of any error. If there is no error, then this
        #   field is absent in the response.
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute result
        #   An object to return the details about the namespace key created.
        #
        #   @return [NextbillionSDK::Models::Skynet::NamespacedApikeyCreateResponse::Result, nil]
        optional :result, -> { NextbillionSDK::Models::Skynet::NamespacedApikeyCreateResponse::Result }

        # @!attribute status
        #   Returns the API response code.
        #
        #   @return [Integer, nil]
        optional :status, Integer

        # @!method initialize(error: nil, message: nil, result: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Skynet::NamespacedApikeyCreateResponse} for more
        #   details.
        #
        #   @param error [String] Returns the error type in case of any error. If there is no error, then this fie
        #
        #   @param message [String] Returns the error message in case of any error. If there is no error, then this
        #
        #   @param result [NextbillionSDK::Models::Skynet::NamespacedApikeyCreateResponse::Result] An object to return the details about the namespace key created.
        #
        #   @param status [Integer] Returns the API response code.

        # @see NextbillionSDK::Models::Skynet::NamespacedApikeyCreateResponse#result
        class Result < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute apikey
          #   Returns the unique `key` created for the specified namespace.
          #
          #   @return [String, nil]
          optional :apikey, String

          # @!attribute created_at
          #   Returns the time, expressed as UNIX epoch timestamp in seconds, when the
          #   namespace key was created.
          #
          #   @return [Integer, nil]
          optional :created_at, Integer

          # @!attribute expires_at
          #   Returns the time, expressed as UNIX epoch timestamp in seconds, when the
          #   namespace key will expire.
          #
          #   @return [Integer, nil]
          optional :expires_at, Integer

          # @!attribute namespace
          #   Returns the name of the `namespace` for which the key is created.
          #
          #   @return [String, nil]
          optional :namespace, String

          # @!attribute sub_id
          #   An internal subscription ID.
          #
          #   @return [String, nil]
          optional :sub_id, String

          # @!method initialize(apikey: nil, created_at: nil, expires_at: nil, namespace: nil, sub_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Skynet::NamespacedApikeyCreateResponse::Result} for
          #   more details.
          #
          #   An object to return the details about the namespace key created.
          #
          #   @param apikey [String] Returns the unique `key` created for the specified namespace.
          #
          #   @param created_at [Integer] Returns the time, expressed as UNIX epoch timestamp in seconds, when the namespa
          #
          #   @param expires_at [Integer] Returns the time, expressed as UNIX epoch timestamp in seconds, when the namespa
          #
          #   @param namespace [String] Returns the name of the `namespace` for which the key is created.
          #
          #   @param sub_id [String] An internal subscription ID.
        end
      end
    end
  end
end
