require "starruby"
require "hitandblow"
include StarRuby

font = Font.new("C:\\Windows\\Fonts\\Meiryo.ttc", 16)
color = Color.new(200, 200, 200)

hab = HitAndBlow.new(1234)

Game.run(320, 240, :title => "Hit and Blow") do |game|
  answer = hab.reply(1112)
  game.screen.render_text("Hit:  #{answer[0]}", 20, 100, font, color)
  game.screen.render_text("Blow: #{answer[1]}", 20, 150, font, color)
end

