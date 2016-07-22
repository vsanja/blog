class ForeignKeyValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if !value.nil? && options[:with] && options[:with].respond_to?(:exists?)
      record.errors[attribute] << (options[:message] || 'invalid foreign key') unless options[:with].exists?(value)
    end
  end
end

