pub fn successor(base: Int) {
  base + 1
}

pub fn addition(base: Int, count: Int) -> Int {
  case count {
    i if i <= 0 -> base
    _ -> successor(addition(base, count - 1))
  }
}

pub fn multiplication(base: Int, count: Int) -> Int {
  case count {
    i if i <= 0 -> 0
    1 -> base
    _ -> addition(multiplication(base, count - 1), base)
  }
}

pub fn exponentiation(base: Int, count: Int) -> Int {
  case count {
    i if i <= 0 -> 1
    1 -> base
    _ -> multiplication(exponentiation(base, count - 1), base)
  }
}

pub fn tetration(base: Int, count: Int) -> Int {
  case count {
    i if i <= 0 -> 1
    1 -> base
    _ -> exponentiation(base, tetration(base, count - 1))
  }
}

pub fn pentation(base: Int, count: Int) -> Int {
  case count {
    i if i <= 0 -> 1
    1 -> base
    _ -> tetration(base, pentation(base, count - 1))
  }
}
