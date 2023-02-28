require './game'
describe Game do
  it 'should return true of parent AND last_played_at is less than 2 years when we call the can_be_archived?' do
    game = Game.new(true, '2022/10/12', '2022/10/12')
    expect(game.can_be_archived?).to be_falsey
  end
end
