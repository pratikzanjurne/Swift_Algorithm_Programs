import Foundation


class Deck{
    var queueList = QueueLinkedList<Card>()
    var player1 : Player?
    var player2 : Player?
    var player3 : Player?
    var player4 : Player?
    var playerDeck = [Player]()
    var sortedDeck = [Player]()
    func createDeck() -> [Card] {
        let ranks = [Rank.Ace, Rank.Two, Rank.Three, Rank.Four, Rank.Five, Rank.Six, Rank.Seven, Rank.Eight, Rank.Nine, Rank.Ten, Rank.Jack, Rank.Queen, Rank.King]
        let suits = [Suit.Spades, Suit.Hearts, Suit.Diamonds, Suit.Clubs]
        var deck = [Card]()
        for suit in suits {
            for rank in ranks {
                deck.append(Card(rank: rank, suit: suit))
            }
        }
        return deck
    }
    
    func rand()->CGFloat{
        return CGFloat(Float(arc4random()) / Float(UINT32_MAX))
    }
    
    func shuffleCards(deck:[Card]) -> [Card] {
        var shuffledCards = deck
        for i in 0..<52{
            let index = Int(rand() * 52)
            let temp = shuffledCards[index]
            shuffledCards[index] = shuffledCards[i]
            shuffledCards[i] = temp
        }
        return shuffledCards
    }
    
    func addToQueue(cards:[Card]) {
        for i in 0..<cards.count{
            queueList.insertCard(card:  cards[i])
        }
    }


    
    func distributeCards(){
        var player1Cards = [Card]()
        var player2Cards = [Card]()
        var player3Cards = [Card]()
        var player4Cards = [Card]()

        for _ in 0..<9{
            for j in 0..<4{
                switch j{
                case 0:
                    player1Cards.append(queueList.getCard()!)
                case 1:
                    player2Cards.append(queueList.getCard()!)
                case 2:
                    player3Cards.append(queueList.getCard()!)
                case 3:
                    player4Cards.append(queueList.getCard()!)

                default:
                    break
                }
            }
        }
        player1 = Player(cards: player1Cards)
        player2 = Player(cards: player2Cards)
        player3 = Player(cards: player3Cards)
        player4 = Player(cards: player4Cards)
        playerDeck.append(player1!)
        playerDeck.append(player2!)
        playerDeck.append(player3!)
        playerDeck.append(player4!)

    }

    func sortCards(){
        
        for player in playerDeck{
            var sortedCardSuit = [Card]()
            var sortedCardRank = doBubbleSortInteger(Array: player.cards, size: 9)
            var temp:Card
            for index in 1..<9{
                temp = sortedCardRank[index]
                var index1:Int = index - 1
                while(index1 >= 0 ){
                    if temp.suit.simpleDescription() == sortedCardRank[index1].suit.simpleDescription(){
                        break
                    }
                    sortedCardRank[index1+1] = sortedCardRank[index1]
                    index1 -= 1
                }
                sortedCardRank[index1+1] = temp
            }
            sortedCardSuit = sortedCardRank
            sortedDeck.append(Player(cards: sortedCardSuit))
        }
    }
    
    func doBubbleSortInteger(Array:[Card],size:Int)->[Card]{
        var temp:Card
        var array:[Card] = Array
        for index in 0..<size-1{
            for index1 in 0..<size-index-1{
                if array[index1].rank.rawValue > array[index1+1].rank.rawValue
                {
                    temp = array[index1]
                    array[index1] = array[index1+1]
                    array[index1+1] = temp
                }
            }
        }
        return array
    }
    
    func printResult() {
        var i = 1
        for player in sortedDeck{
            print("Player \(i) has the following cards:")
            for card in player.cards{
                print(card.simpleDescription())
            }
            i += 1
            print("\n")
        }
    }
    
    


}

