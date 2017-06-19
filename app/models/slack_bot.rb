class SlackBot
  include HubotGf::Worker

  listen /Make (*.*) a (.*)/i => :make!
  listen /Give me all stats (?:for)? inventories/i => :all_inventory_stats
  listen /Stats (?:for)? inventories/i => :inventory_stats

  def make!(who, what)
    broadcast "Made #{who} a #{what}"
    reply "Completed your request!"
  end

  def inventory_stats
    reply "Here are inventory_stats"
  end

  def all_inventory_stats
    reply "Here are all_inventory_stats"
  end
end
