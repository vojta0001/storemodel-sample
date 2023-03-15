class JsonModel::Lesson < JsonModel::Base
  LOCALE = 'en'

  attribute :duration, :float
  attribute :description

  def initialize(attributes = nil)
    super(attributes)
  end

  def description
    val = JSON.parse(super())
    val[LOCALE]
  rescue
    super()
  end

  def description=(val)
    # old = get_original_val
    # old[LOCALE] = val
    # super(old.to_json)
    # super(val)
  end
end
