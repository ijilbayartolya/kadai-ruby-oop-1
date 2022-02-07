class Team

  attr_accessor :win, :lose, :draw, :name

  def initialize ( name, win, lose, draw)
    self.win = win
    self.lose = lose
    self.draw = draw
    self.name = name
  end
  #def calc_win_rate(win, lose)
  #  return win.to_f/(win+lose)
  #end
  def calc_win_rate()
    return self.win.to_f/(self.win+self.lose)
  end
  def show_team_result()
      rate = calc_win_rate()
      puts "#{self.name}の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{rate}です。"
  end
end

giants   = Team.new('Giants', 67, 45, 8)
tigers   = Team.new('Tigers', 60, 53, 7)
dragons  = Team.new('Dragons', 60, 55, 5)
baystars = Team.new('Baystars', 56, 58, 6)
carp     = Team.new('Carp', 52, 56, 12)
swallows = Team.new('Swallows', 41, 69, 10)

# show_team_resultの呼び出し
giants.show_team_result()
tigers.show_team_result()
dragons.show_team_result()
baystars.show_team_result()
carp.show_team_result()
swallows.show_team_result()









