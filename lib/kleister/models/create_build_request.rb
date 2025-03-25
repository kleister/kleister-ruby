# Kleister OpenAPI
#
# API definition for Kleister, manage mod packs for Minecraft
#
# The version of the OpenAPI document: 1.0.0-alpha1
# Contact: kleister@webhippie.de
# Generated by: https://openapi-generator.tech
# Generator version: 7.12.0
#

require 'date'
require 'time'

module Kleister
  class CreateBuildRequest
    attr_accessor :minecraft_id, :forge_id, :neoforge_id, :quilt_id, :fabric_id, :name, :java, :memory, :latest, :recommended, :public

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        minecraft_id: :minecraft_id,
        forge_id: :forge_id,
        neoforge_id: :neoforge_id,
        quilt_id: :quilt_id,
        fabric_id: :fabric_id,
        name: :name,
        java: :java,
        memory: :memory,
        latest: :latest,
        recommended: :recommended,
        public: :public
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        minecraft_id: :String,
        forge_id: :String,
        neoforge_id: :String,
        quilt_id: :String,
        fabric_id: :String,
        name: :String,
        java: :String,
        memory: :String,
        latest: :Boolean,
        recommended: :Boolean,
        public: :Boolean
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new(%i[
                minecraft_id
                forge_id
                neoforge_id
                quilt_id
                fabric_id
                name
                java
                memory
                latest
                recommended
                public
              ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      unless attributes.is_a?(Hash)
        raise ArgumentError, 'The input argument (attributes) must be a hash in `Kleister::CreateBuildRequest` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) do |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError,
                "`#{k}` is not a valid attribute in `Kleister::CreateBuildRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end

        h[k.to_sym] = v
      end

      if attributes.key?(:minecraft_id)
        self.minecraft_id = attributes[:minecraft_id]
      end

      if attributes.key?(:forge_id)
        self.forge_id = attributes[:forge_id]
      end

      if attributes.key?(:neoforge_id)
        self.neoforge_id = attributes[:neoforge_id]
      end

      if attributes.key?(:quilt_id)
        self.quilt_id = attributes[:quilt_id]
      end

      if attributes.key?(:fabric_id)
        self.fabric_id = attributes[:fabric_id]
      end

      if attributes.key?(:name)
        self.name = attributes[:name]
      end

      if attributes.key?(:java)
        self.java = attributes[:java]
      end

      if attributes.key?(:memory)
        self.memory = attributes[:memory]
      end

      if attributes.key?(:latest)
        self.latest = attributes[:latest]
      end

      if attributes.key?(:recommended)
        self.recommended = attributes[:recommended]
      end

      if attributes.key?(:public)
        self.public = attributes[:public]
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      []
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        minecraft_id == other.minecraft_id &&
        forge_id == other.forge_id &&
        neoforge_id == other.neoforge_id &&
        quilt_id == other.quilt_id &&
        fabric_id == other.fabric_id &&
        name == other.name &&
        java == other.java &&
        memory == other.memory &&
        latest == other.latest &&
        recommended == other.recommended &&
        public == other.public
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [minecraft_id, forge_id, neoforge_id, quilt_id, fabric_id, name, java, memory, latest, recommended, public].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash[key.to_s] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash[key.to_s] = attributes[attribute_map[key]].map { |v| _deserialize(::Regexp.last_match(1), v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash[key.to_s] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Kleister.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
