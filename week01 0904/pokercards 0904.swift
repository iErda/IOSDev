import UIKit
 
 
 
struct Card{
    var color : String
    var existence : Bool
    var num : String
}
enum Color : Int
{
    case spade,heart,diamond,club
    func getcolor() -> String
    {
        switch self {
        case .spade:
            return "spade"
        case .heart:
            return "heart"
        case .diamond:
            return "diamond"
        case .club:
            return "club"
        }
    }
}
 
enum Num : Int
{
    case A,two,three,four,five,six,seven,eight,nien,ten,J,Q,K
    func getnum() ->String
    {
        switch self {
        case .A:
            return "A"
        case .J:
            return "J"
        case .Q:
            return "Q"
        case .K:
            return "K"
        default:
            return String(self.rawValue)
        }
    }
}
 
var cards:[Card]=[]
for i in 0...51
{
    let c = Color.init(rawValue: Int(i/13))!
    let n = Num.init(rawValue: Int(i%13))!
    cards.append(Card(color : c.getcolor(), existence: true, num : n.getnum()))
}
 
func random_card() -> Card
{
    var index = Int(arc4random()%52)
    while (cards[index].existence==false)
    {index = Int(arc4random()%52)}
    let descrip : String = cards[index].color+" "+cards[index].num
    print(descrip)
    cards[index].existence = false
    return cards[index];
}
 
for i in 0...51
{
  let number = 4
 let pernumber = 52/4
If(i%pernumber==0)
{ 
   let n = 1
   let des : String = "第"+String(n)+"个人的牌"
  random_card()  
print("\n\(des)\n ")
n++
}
}