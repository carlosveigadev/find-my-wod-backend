class WodRepresenter
  def initialize(wod)
    @wod = wod
  end

  def as_json
    {
      id: wod.id,
      title: wod.title,
      description: wod.description,
      date_added: wod.created_at
    }
  end

  private

  attr_reader :wod
end
