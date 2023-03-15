class JsonModel::ItemsData < JsonModel::Base
  attribute :lesson, JsonModel::Lesson.to_type

  accepts_nested_attributes_for :lesson, reject_if: proc { |o| o.blank? }

  validates :lesson, store_model: true, allow_nil: true

  def initialize(attributes=nil)
    super(attributes)
    self.lesson ||= JsonModel::Lesson.new()
  end
end