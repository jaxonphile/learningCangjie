# 07. Custom Enum and Match Expression in Cangjie

## 1. Custom Enum Definition

Unlike C language where `enum` is just an alias for integers (`int`), Enum in Cangjie is a strong type (Algebraic Data Type).

The `|` symbol literally means **OR**. It specifies that an Enum variable can only hold one of the defined variants at a time.

```cangjie
enum Arah {
    | Utara
    | Selatan
    | Timur
    | Barat
}

```

---

## 2. Pattern Matching with `match`

The `match` keyword is an **expression** in Cangjie (meaning it can return values directly).

The `=>` operator acts as a mapper between the pattern on the left and the action/result on the right (`Pattern => Action`). You can think of it like an implicit function mapping: *If pattern matches, THEN execute/return this*.

Key rules:

* `case Pola => Aksi`: Matches specific Enum variant or value.
* `case _ => Aksi`: Acts as the default case (matches anything).
* **Exhaustiveness Checking**: The compiler requires all possible Enum cases to be handled, or a compile-time error will occur.

---

## 3. Key Differences: Cangjie Enum vs C Enum vs `switch`

| Feature | Cangjie `match` & `enum` | C Language `switch` & `enum` |
| --- | --- | --- |
| **Type Safety** | Strict type-safety (cannot assign random `int`) | Just an integer wrapper (can assign any `int`) |
| **Return Value** | Is an Expression (can assign to variables) | Is a Statement (cannot return value directly) |
| **Completeness** | Exhaustiveness checking (Compiler errors if a case is missed) | Non-exhaustive (Compiler allows missing cases) |
| **Syntax Mapper** | Uses `case Pattern => Result` | Uses `case Value: ... break;` |

---

## 4. Full Code Example (`learning7.cj`)

```cangjie
package learningCangjie

// 1. Custom Enum Definition
enum Arah {
    | Utara
    | Selatan
    | Timur
    | Barat
}

main() {
    let tujuan: Arah = Utara

    // 2. Match as Statement (Executing actions)
    print("Aksi gerakan: ")
    match (tujuan) {
        case Utara => println("Maju ke Utara")
        case Selatan => println("Mundur ke Selatan")
        case _ => println("Arah lain")
    }

    // 3. Match as Expression (Returning values directly to a variable)
    let tujuanLain: Arah = Timur

    let instruksi: String = match (tujuanLain) {
        case Utara => "Belok Kiri"
        case Selatan => "Putar Balik"
        case Timur => "Belok Kanan"
        case Barat => "Lurus Saja"
    }

    println("Instruksi navigasi: ${instruksi}")
}

```