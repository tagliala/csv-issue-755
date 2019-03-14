class PasswordValidator < ActiveModel::EachValidator
  def validate_each(record, attr_name, value)
    unless value =~ /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/i
      record.errors.add(attr_name, :password, options.merge(value: value))
    end
  end
end

# This allows us to assign the validator in the model
module ActiveModel::Validations::HelperMethods
  def validates_password(*attr_names)
    validates_with PasswordValidator, _merge_attributes(attr_names)
  end
end
