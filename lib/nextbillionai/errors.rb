# frozen_string_literal: true

module Nextbillionai
  module Errors
    class Error < StandardError
      # @!attribute cause
      #
      #   @return [StandardError, nil]
    end

    class ConversionError < Nextbillionai::Errors::Error
      # @return [StandardError, nil]
      def cause = @cause.nil? ? super : @cause

      # @api private
      #
      # @param on [Class<StandardError>]
      # @param method [Symbol]
      # @param target [Object]
      # @param value [Object]
      # @param cause [StandardError, nil]
      def initialize(on:, method:, target:, value:, cause: nil)
        cls = on.name.split("::").last

        message = [
          "Failed to parse #{cls}.#{method} from #{value.class} to #{target.inspect}.",
          "To get the unparsed API response, use #{cls}[#{method.inspect}].",
          cause && "Cause: #{cause.message}"
        ].filter(&:itself).join(" ")

        @cause = cause
        super(message)
      end
    end

    class APIError < Nextbillionai::Errors::Error
      # @return [URI::Generic]
      attr_accessor :url

      # @return [Integer, nil]
      attr_accessor :status

      # @return [Object, nil]
      attr_accessor :body

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer, nil]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
        @url = url
        @status = status
        @body = body
        @request = request
        @response = response
        super(message)
      end
    end

    class APIConnectionError < Nextbillionai::Errors::APIError
      # @!attribute status
      #
      #   @return [nil]

      # @!attribute body
      #
      #   @return [nil]

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(
        url:,
        status: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Connection error."
      )
        super
      end
    end

    class APITimeoutError < Nextbillionai::Errors::APIConnectionError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(
        url:,
        status: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Request timed out."
      )
        super
      end
    end

    class APIStatusError < Nextbillionai::Errors::APIError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      #
      # @return [self]
      def self.for(url:, status:, body:, request:, response:, message: nil)
        kwargs = {
          url: url,
          status: status,
          body: body,
          request: request,
          response: response,
          message: message
        }

        case status
        in 400
          Nextbillionai::Errors::BadRequestError.new(**kwargs)
        in 401
          Nextbillionai::Errors::AuthenticationError.new(**kwargs)
        in 403
          Nextbillionai::Errors::PermissionDeniedError.new(**kwargs)
        in 404
          Nextbillionai::Errors::NotFoundError.new(**kwargs)
        in 409
          Nextbillionai::Errors::ConflictError.new(**kwargs)
        in 422
          Nextbillionai::Errors::UnprocessableEntityError.new(**kwargs)
        in 429
          Nextbillionai::Errors::RateLimitError.new(**kwargs)
        in (500..)
          Nextbillionai::Errors::InternalServerError.new(**kwargs)
        else
          Nextbillionai::Errors::APIStatusError.new(**kwargs)
        end
      end

      # @!parse
      #   # @return [Integer]
      #   attr_accessor :status

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(url:, status:, body:, request:, response:, message: nil)
        message ||= {url: url.to_s, status: status, body: body}
        super(
          url: url,
          status: status,
          body: body,
          request: request,
          response: response,
          message: message&.to_s
        )
      end
    end

    class BadRequestError < Nextbillionai::Errors::APIStatusError
      HTTP_STATUS = 400
    end

    class AuthenticationError < Nextbillionai::Errors::APIStatusError
      HTTP_STATUS = 401
    end

    class PermissionDeniedError < Nextbillionai::Errors::APIStatusError
      HTTP_STATUS = 403
    end

    class NotFoundError < Nextbillionai::Errors::APIStatusError
      HTTP_STATUS = 404
    end

    class ConflictError < Nextbillionai::Errors::APIStatusError
      HTTP_STATUS = 409
    end

    class UnprocessableEntityError < Nextbillionai::Errors::APIStatusError
      HTTP_STATUS = 422
    end

    class RateLimitError < Nextbillionai::Errors::APIStatusError
      HTTP_STATUS = 429
    end

    class InternalServerError < Nextbillionai::Errors::APIStatusError
      HTTP_STATUS = (500..)
    end
  end
end
