class WodsRepresenter
  def initialize(wods)
    @wods = wods
  end

  def as_json
    wods.map do |wod|
      {
        id: wod.id,
        title: wod.title,
        description: wod.description,
        date_added: wod.created_at
      }
    end
  end

  private

  attr_reader :wods
end
