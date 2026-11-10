# 05. Option Type & Pattern Matching (<-) in Cangjie

## 1. What is `Option<T>`?
`Option` is a built-in generic `enum` in Cangjie used to handle variables that may or may not contain a value. It prevents `null` pointer exceptions (NPE) at compile time.

It has two variants:
- `Some(T)`: Contains a valid value of type `T`.
- `None`: Represents the absence of a value (empty).

### Shorthand Syntax (`?`)
Instead of writing `Option<T>`, you can use `T?` as shorthand.

```cangjie
// Full syntax
let dataA: Option<Int64> = Some(100)
let dataB: Option<Int64> = None

// Shorthand syntax (?)
let dataC: Int64? = Some(200)
let dataD: Int64? = None