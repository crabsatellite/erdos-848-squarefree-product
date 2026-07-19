import Mathlib.Tactic

set_option maxHeartbeats 0

theorem base256_step_lt {digit low place : Nat}
    (hdigit : digit < 256) (hlow : low < place) :
    digit * place + low < 256 * place := by
  calc
    digit * place + low < digit * place + place := Nat.add_lt_add_left hlow _
    _ = (digit + 1) * place := by ring
    _ ≤ 256 * place :=
      Nat.mul_le_mul_right place (Nat.succ_le_iff.mpr hdigit)

theorem byte_prefix_bounds
    (a7 a6 a5 a4 a3 a2 a1 a0 : Nat)
    (h7 : a7 ≤ 8) (h6 : a6 ≤ 8) (h5 : a5 ≤ 8) (h4 : a4 ≤ 8)
    (h3 : a3 ≤ 8) (h2 : a2 ≤ 8) (h1 : a1 ≤ 8) (h0 : a0 ≤ 8) :
    a0 < 256 ∧
      a0 + a1 < 256 ∧
      a0 + a1 + a2 < 256 ∧
      a0 + a1 + a2 + a3 < 256 ∧
      a0 + a1 + a2 + a3 + a4 < 256 ∧
      a0 + a1 + a2 + a3 + a4 + a5 < 256 ∧
      a0 + a1 + a2 + a3 + a4 + a5 + a6 < 256 ∧
      a0 + a1 + a2 + a3 + a4 + a5 + a6 + a7 < 256 := by
  omega

set_option trace.profiler true in
theorem byteConvolution_mul_high_probe
    (a7 a6 a5 a4 a3 a2 a1 a0 : Nat)
    (h7 : a7 ≤ 8) (h6 : a6 ≤ 8) (h5 : a5 ≤ 8) (h4 : a4 ≤ 8)
    (h3 : a3 ≤ 8) (h2 : a2 ≤ 8) (h1 : a1 ≤ 8) (h0 : a0 ≤ 8) :
    (((a7 * 72_057_594_037_927_936 + a6 * 281_474_976_710_656 +
          a5 * 1_099_511_627_776 + a4 * 4_294_967_296 +
          a3 * 16_777_216 + a2 * 65_536 + a1 * 256 + a0) *
        72_340_172_838_076_673) % 18_446_744_073_709_551_616) /
        72_057_594_037_927_936 =
      a7 + a6 + a5 + a4 + a3 + a2 + a1 + a0 := by
  let p :=
    a7 * 72_057_594_037_927_936 + a6 * 281_474_976_710_656 +
      a5 * 1_099_511_627_776 + a4 * 4_294_967_296 +
      a3 * 16_777_216 + a2 * 65_536 + a1 * 256 + a0
  let s0 := a0
  let s1 := a0 + a1
  let s2 := a0 + a1 + a2
  let s3 := a0 + a1 + a2 + a3
  let s4 := a0 + a1 + a2 + a3 + a4
  let s5 := a0 + a1 + a2 + a3 + a4 + a5
  let s6 := a0 + a1 + a2 + a3 + a4 + a5 + a6
  let s7 := a0 + a1 + a2 + a3 + a4 + a5 + a6 + a7
  let r0 := s0
  let r1 := s1 * 256 + r0
  let r2 := s2 * 65_536 + r1
  let r3 := s3 * 16_777_216 + r2
  let r4 := s4 * 4_294_967_296 + r3
  let r5 := s5 * 1_099_511_627_776 + r4
  let r6 := s6 * 281_474_976_710_656 + r5
  let q :=
    s7 * 72_057_594_037_927_936 + r6
  let overflow :=
    (a1 + a2 + a3 + a4 + a5 + a6 + a7) +
      (a2 + a3 + a4 + a5 + a6 + a7) * 256 +
      (a3 + a4 + a5 + a6 + a7) * 65_536 +
      (a4 + a5 + a6 + a7) * 16_777_216 +
      (a5 + a6 + a7) * 4_294_967_296 +
      (a6 + a7) * 1_099_511_627_776 +
      a7 * 281_474_976_710_656
  have hproduct :
      p * 72_340_172_838_076_673 =
        q + 18_446_744_073_709_551_616 * overflow := by
    dsimp [p, q, r6, r5, r4, r3, r2, r1, r0,
      s7, s6, s5, s4, s3, s2, s1, s0, overflow]
    ring
  obtain ⟨hs0', hs1', hs2', hs3', hs4', hs5', hs6', hs7'⟩ :=
    byte_prefix_bounds a7 a6 a5 a4 a3 a2 a1 a0 h7 h6 h5 h4 h3 h2 h1 h0
  have hs0 : s0 < 256 := by simpa [s0] using hs0'
  have hs1 : s1 < 256 := by simpa [s1] using hs1'
  have hs2 : s2 < 256 := by simpa [s2] using hs2'
  have hs3 : s3 < 256 := by simpa [s3] using hs3'
  have hs4 : s4 < 256 := by simpa [s4] using hs4'
  have hs5 : s5 < 256 := by simpa [s5] using hs5'
  have hs6 : s6 < 256 := by simpa [s6] using hs6'
  have hs7 : s7 < 256 := by simpa [s7] using hs7'
  have hr0 : r0 < 256 := by simpa [r0] using hs0
  have hr1 : r1 < 65_536 := by
    dsimp [r1]
    calc
      s1 * 256 + r0 < 256 * 256 := base256_step_lt hs1 hr0
      _ = 65_536 := by norm_num
  have hr2 : r2 < 16_777_216 := by
    dsimp [r2]
    calc
      s2 * 65_536 + r1 < 256 * 65_536 := base256_step_lt hs2 hr1
      _ = 16_777_216 := by norm_num
  have hr3 : r3 < 4_294_967_296 := by
    dsimp [r3]
    calc
      s3 * 16_777_216 + r2 < 256 * 16_777_216 := base256_step_lt hs3 hr2
      _ = 4_294_967_296 := by norm_num
  have hr4 : r4 < 1_099_511_627_776 := by
    dsimp [r4]
    calc
      s4 * 4_294_967_296 + r3 < 256 * 4_294_967_296 :=
        base256_step_lt hs4 hr3
      _ = 1_099_511_627_776 := by norm_num
  have hr5 : r5 < 281_474_976_710_656 := by
    dsimp [r5]
    calc
      s5 * 1_099_511_627_776 + r4 < 256 * 1_099_511_627_776 :=
        base256_step_lt hs5 hr4
      _ = 281_474_976_710_656 := by norm_num
  have hr6 : r6 < 72_057_594_037_927_936 := by
    dsimp [r6]
    calc
      s6 * 281_474_976_710_656 + r5 < 256 * 281_474_976_710_656 :=
        base256_step_lt hs6 hr5
      _ = 72_057_594_037_927_936 := by norm_num
  have hq : q < 18_446_744_073_709_551_616 := by
    dsimp [q]
    calc
      s7 * 72_057_594_037_927_936 + r6 <
          256 * 72_057_594_037_927_936 := base256_step_lt hs7 hr6
      _ = 18_446_744_073_709_551_616 := by norm_num
  change
    (p * 72_340_172_838_076_673 % 18_446_744_073_709_551_616) /
        72_057_594_037_927_936 = _
  rw [hproduct, Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt hq]
  dsimp [q]
  rw [Nat.mul_comm s7 72_057_594_037_927_936,
    Nat.mul_add_div (by norm_num), Nat.div_eq_of_lt hr6]
  dsimp [s7]
  ring
