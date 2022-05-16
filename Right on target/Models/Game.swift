import Foundation

protocol GameProtocol {
    var score: Int {get}
    var secretValueGenerator: GeneratorProtocol {get}
    var currentRound: GameRoundProtocol! {get}
    var isGameEnded: Bool {get}
    
    func restartGame()
    func startNewRound()
}

class Game: GameProtocol {
    
    var score: Int {
        var totalScore: Int = 0
        for round in rounds {
            totalScore += round.score
        }
        return totalScore
    }
    
    var secretValueGenerator: GeneratorProtocol
    var currentRound: GameRoundProtocol!
    
    private var rounds: [GameRoundProtocol] = []
    private var roundsCount: Int!
    
    var isGameEnded: Bool {
        if roundsCount == rounds.count {
            return true
        } else {
            return false
        }
    }
    
    init(valueGenerator: GeneratorProtocol, rounds: Int) {
        secretValueGenerator = valueGenerator
        roundsCount = rounds
        startNewRound()
    }
    
    func startNewRound() {
        currentRound = GameRound(secretValue: secretValueGenerator.getRandomValue())
        rounds.append(currentRound)
    }
    
    func restartGame() {
        rounds = []
        startNewRound()
    }
    
}
