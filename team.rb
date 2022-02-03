class Team

  attr_accessor :name, :win, :lose, :draw

  def initialize
    self.name = ['Giants', 'Tigers', 'Dragons', 'BayStars', 'Carp', 'Swallows']
    self.win = [67, 60, 60, 56, 52, 41]
    self.lose = [45, 53, 55, 58, 56, 69]
    self.draw = [8, 7, 5, 6, 12, 10]
  end
  def calc_win_rate(win, lose)
    return win.to_f/(win+lose)
  end
  
  def show_team_result()
    (0..5).each do |n|
      puts "#{self.name[n]}の2020年の成績は #{self.win[n]}勝,#{self.lose[n]}敗, #{self.draw[n]}分, 勝率は #{calc_win_rate(self.win[n],self.lose[n])}です。"
    end
  end
end
#team=Team.new
#team.show_team_result()
#p team
team=Team.new
team.show_team_result()







