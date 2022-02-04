class Team

  attr_accessor :name, :win, :lose, :draw

  def initialize (nname, wwin, llose, ddraw)
    self.name = nname
    self.win = wwin
    self.lose = llose
    self.draw = ddraw
  end
  def calc_win_rate(win, lose)
    return win.to_f/(win+lose)
  end
  
  def show_team_result()
    (0..5).each do |n|
      a = calc_win_rate(win[n],lose[n])
      puts "#{self.name[n]}の2020年の成績は #{self.win[n]}勝,#{self.lose[n]}敗, #{self.draw[n]}分, 勝率は #{a}です。"
    end
  end
end

name = ['Giants', 'Tigers', 'Dragons', 'BayStars', 'Carp', 'Swallows']
win = [67, 60, 60, 56, 52, 41]
lose = [45, 53, 55, 58, 56, 69]
draw = [8, 7, 5, 6, 12, 10]

team=Team.new(name, win, lose, draw)
team.show_team_result()







