# typed: strict

require 'base64'

module KubeDSL
  class KeyValueFields
    extend T::Sig

    sig { returns(Symbol) }
    attr_reader :format

    sig { returns(T::Hash[Symbol, String]) }
    attr_reader :kv_pairs

    sig { params(format: Symbol).void }
    def initialize(format: :string)
      @format = format
      @kv_pairs = T.let({}, T::Hash[Symbol, String])
    end

    sig { params(key: Symbol, value: String).void }
    def add(key, value)
      @kv_pairs[key] = value
    end

    sig { params(key: Symbol).void }
    def remove(key)
      @kv_pairs.delete(key)
    end

    sig { params(key: Symbol).returns(T.nilable(String)) }
    def get(key)
      @kv_pairs[key]
    end

    sig { params(key: Symbol, value: String).void }
    def set(key, value)
      @kv_pairs[key] = value
    end

    sig { returns(T::Hash[Symbol, String]) }
    def serialize
      @kv_pairs.each_with_object({}) do |(key, value), ret|
        ret[key] = serialize_value(value)
      end
    end

    sig { params(other: KeyValueFields).void }
    def merge!(other)
      @kv_pairs.merge!(other.instance_variable_get(:@kv_pairs))
    end

    private

    sig { params(data: String).returns(String) }
    def serialize_value(data)
      case format
        when :byte
          Base64.strict_encode64(data.to_s)
        else
          data
      end
    end
  end
end
