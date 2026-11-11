package learningCangjie;
import std.unittest.InputParameter

enum Arah {
    | Utara
    | Selatan
    | Timur
    | Barat
}

main() {
    let tujuan: Arah = Utara

    match (tujuan) {
        case Utara => println("Maju ke Utara")
        case Selatan => println("Mundur ke Selatan")
        case _ => println("Arah lain")
    }
}