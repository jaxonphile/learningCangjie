package learningCangjie

main() {
    for (i in 1..5) {
        println("Angka ke-${i}")
    }

    println()

    for (i in 1..=5) {
        println("Angka ke-${i}")
    }

    println()

    var hp: Int64 = 3

    while (hp > 0) {
        println("Serang musuh! Sisa HP: ${hp}")
        hp--
    }

    println("Musuh kalah")
}
