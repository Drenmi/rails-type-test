require Rails.root.join("app/types/duration")

ActiveRecord::Type.register(:duration, Duration)
