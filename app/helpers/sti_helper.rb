module StiHelper
  def sti_animal_path(zoo, race = "animal", animal = nil, action = nil)
    send "#{format_sti(action, race, animal)}_path", zoo, animal
  end

  def format_sti(action, race, animal)
    action || animal ?
      "#{format_action(action)}#{race.underscore}" :
      "zoo_#{race.underscore.pluralize}"
  end

  def format_action(action)
    action ? "#{action}_zoo_" : "zoo_"
  end
end
