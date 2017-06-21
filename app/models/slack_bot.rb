class SlackBot
  include HubotGf::Worker

  listen /Give me all stats (?:for)? inventories/i => :all_inventory_stats
  listen /Stats (?:for)? inventories/i => :inventory_stats

  def inventory_stats
    broadcast "Here are inventory_stats"
    reply "Here are inventory_stats"
  end

  def all_inventory_stats
    reply "Here are all_inventory_stats"
  end
end
