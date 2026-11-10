package learningCangjie

let name = "Alex" // can not be changed (immutable)
var score: Int64 = 90 // can be changed (mutable)

main() {
    score = 95
    //name = "YourName"; // Trigger for error, try to run!
    println("Halo ${name}, selamat datang");
}
