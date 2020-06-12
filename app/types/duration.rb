class Duration < ActiveRecord::Type::Integer
  def cast(value)
    if value.present? && !value.is_a?(ActiveSupport::Duration)
      super(value.to_i.seconds)
    else
      super
    end
  end

  def serialize(value)
    value.to_i
  end

  def deserialize(value)
    value.to_i.seconds
  end
end
