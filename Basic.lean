structure TakeuchiModel where
  twoA : Int
  twoB : Int
  sum_is_two : twoA + twoB = 2

theorem symmetric_point_is_half (m : TakeuchiModel)
    (h : m.twoA = m.twoB) : m.twoB = 1 := by
  have h1 := m.sum_is_two
  omega

theorem noise_exists_if_not_symmetric (m : TakeuchiModel)
    (h_not : m.twoB ≠ 1) : m.twoB - 1 ≠ 0 := by
  omega
