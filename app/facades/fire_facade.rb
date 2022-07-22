class FireFacade
  def self.get_nation_info(nation)
    json = FireBenderService.get_nation_info(nation)

    json.map do |fire_facts|
      Fire.new(fire_facts)
    end
  end
end