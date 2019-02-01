# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------
module GoogleInSpec
  module Compute
    module Property
      class RouterAdvertisedipranges
        attr_reader :range

        attr_reader :description

        def initialize(args = nil)
          return if args.nil?
          @range = args['range']
          @description = args['description']
        end
      end

      class RouterAdvertisediprangesArray
        def self.parse(value)
          return if value.nil?
          return RouterAdvertisedipranges.new(value) unless value.is_a?(::Array)
          value.map { |v| RouterAdvertisedipranges.new(v) }
        end
      end
    end
  end
end