package learningCangjie;

// func binpow(a: Int64, b: Int64): Int64 {
//     if (b == 0) {
//         return 1
//     }
//     let res: Int64 = binpow(a, b / 2)
//     if (b % 2 != 0) {
//         return res * res * a
//     } else {
//         return res * res
//     }
// }

func binpow(a: Int64, b: Int64): Int64 {
    var base = a
    var exp = b
    var res: Int64 = 1

    while (exp > 0) {
        if ((exp & 1) != 0) {
            res *= base
        }

        base *= base
        exp >>= 1
    }

    return res
}

main() {
    let base = 2
    let exp = 11
    let result = binpow(base, exp)

    println("${base}^${exp} = ${result}")
}