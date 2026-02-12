structure TakeuchiModel where
  twoA : Int
  twoB : Int
  sum_is_two : twoA + twoB = 2
  hb_lo : 0 <= twoB
  hb_hi : twoB <= 2

-- A = B（対称条件）-> B = 1/2
theorem symmetric_point_is_half (m : TakeuchiModel)
    (h : m.twoA = m.twoB) : m.twoB = 1 := by
  have h1 := m.sum_is_two
  omega

-- B != 1/2 -> ノイズ存在
theorem noise_exists_if_not_symmetric (m : TakeuchiModel)
    (h_not : m.twoB ≠ 1) : m.twoB - 1 ≠ 0 := by
  omega

-- 0<=B<=1 かつ A+B=1 の範囲でノイズゼロは B=1/2 以外に存在しない
theorem no_other_zero_noise (v : Int)
    (hlo : 0 <= v) (hhi : v <= 2)
    (h : v - 1 = 0) : v = 1 := by
  omega

-- 逆方向：B=1/2 ならば必ずノイズゼロ
theorem half_implies_no_noise (v : Int)
    (h : v = 1) : v - 1 = 0 := by
  omega
