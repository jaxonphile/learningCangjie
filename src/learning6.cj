package learningCangjie

main() {
    let angka: Array<Int64> = [10, 20, 30, 40, 50]

    let kosong = Array<Int64>(5, {i => 0})

    let dataAda: Option<Int64> = Some(100)

    println(dataAda)

    if (let Some(nilai) <- dataAda) { // komputer cek dataAda, jika
                                      // value Some(x), maka x akan diassign ke 'nilai'
        println(nilai)
    }
    
}