class WodsRepresenter
  def initialize(wods)
    @wods = wods
  end

  def as_json
    wods.map do |_wod|
      {
        id: _wod.id,
        title: _wod.title,
        description: _wod.description,
        date_added: _wod.created_at
      }
    end
  end

  private

  attr_reader :wods
end
