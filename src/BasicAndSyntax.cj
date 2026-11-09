package learningCangjie;

let name: String = "MyName"     // can not be changed (immutable)
var score: Int64 = 90           // can be changed (mutable)

main() {
    score = 95;
    //name = "YourName"; // Trigger for error, try to run!
    println(score);
}