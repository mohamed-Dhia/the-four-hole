import gleeunit
import the_four_hole

pub fn main() -> Nil {
  gleeunit.main()
}

pub fn should_add_to_4_test() {
  assert the_four_hole.addition(2, 2) == 4
}

pub fn should_muliply_to_4_test() {
  assert the_four_hole.multiplication(2, 2) == 4
}

pub fn should_power_to_4_test() {
  assert the_four_hole.exponentiation(2, 2) == 4
}

pub fn should_tetrate_to_4_test() {
  assert the_four_hole.tetration(2, 2) == 4
}

pub fn should_pentate_to_4_test() {
  assert the_four_hole.pentation(2, 2) == 4
}
