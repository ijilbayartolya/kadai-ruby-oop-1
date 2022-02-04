class Team

  attr_accessor :win, :lose, :draw

  def initialize ( win, lose, draw)
    self.win = win
    self.lose = lose
    self.draw = draw
  end
  def calc_win_rate(win, lose)
    return win.to_f/(win+lose)
  end
  
  def show_team_result(name)
      rate = calc_win_rate(win,lose)
      puts "#{name}の2020年の成績は #{self.win}勝,#{self.lose}敗, #{self.draw}分, 勝率は #{rate}です。"
  end
end



giants   = Team.new(67, 45, 8)
tigers   = Team.new(60, 53, 7)
dragons  = Team.new(60, 55, 5)
baystars = Team.new(56, 58, 6)
carp     = Team.new(52, 56, 12)
swallows = Team.new(41, 69, 10)

# show_team_resultの呼び出し
giants.show_team_result('giants')
tigers.show_team_result('tigers')
dragons.show_team_result('dragons')
baystars.show_team_result('baystars')
carp.show_team_result('carp ')
swallows.show_team_result('swallows')

#p giants
#p tigers
#p dragons
#p baystars
#p carp
#p swallows

#team=Team.new(name, win, lose, draw)
#team.show_team_result()







