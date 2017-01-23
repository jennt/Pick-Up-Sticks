require 'game'
require 'main'

describe '#new' do
  game = Game.new(20, 'Bert', 'Ernie')
  context 'when starting a game' do
    it 'has starting sticks and 2 players' do
      expect(game.current_sticks).to eq 20
      expect(game.player1).to eq 'Bert'
      expect(game.player2).to eq 'Ernie'
    end
  end

  # context 'when not playing' do
  #   it 'returns false' do
  #     game = Game.new(20, 'Bert', 'Ernie')
  #     expect(game.play).to eq false
  #   end
  # end
  describe '#take_turn(player1)'do
    context 'when current_player = player1' do
      it 'returns player2' do
        expect(game.take_turn(game.player1)).to eq game.player2
      end
    end
    context 'when current_player = player2' do
      it 'returns player1' do
        expect(game.take_turn(game.player2)).to eq game.player1
      end
    end
  end

  describe '#pick_up_sticks(sticks)' do
    context 'when picking up sticks' do
      it 'returns current sticks less sticks' do
          game.pick_up_sticks(3)
          expect(game.current_sticks).to eq 17
      end
    end
    context 'when picking up sticks' do
      it 'returns current sticks less sticks ' do
          game.pick_up_sticks(3)
          expect(game.current_sticks).to eq 14
      end
    end
  end


end
