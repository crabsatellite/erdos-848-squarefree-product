import Erdos848.TailTwentyMillionOddFinite19Decomposition

namespace Erdos848

/-! Small rational lemmas shared by the two cutoff-19 residue bridges. -/

private theorem twentyMillionOddFinite19Prefix_ratio_le
    {N count : Nat} {density endpoint : Rat}
    (hLower : 20_000_000 ≤ N)
    (hdensity : 0 ≤ density)
    (hendpoint : 0 ≤ endpoint)
    (hcount : (count : Rat) ≤
      ((N / 25 + 1 : Nat) : Rat) * density + endpoint) :
    (count : Rat) / N ≤
      density / 25 + (density + endpoint) / 20_000_000 := by
  have hNposNat : 0 < N := by omega
  have hNpos : (0 : Rat) < N := by exact_mod_cast hNposNat
  have hdiv : (((N / 25 : Nat) : Rat)) ≤ (N : Rat) / 25 :=
    Nat.cast_div_le
  have hlength :
      (((N / 25 + 1 : Nat) : Rat)) ≤ (N : Rat) / 25 + 1 := by
    norm_num at hdiv ⊢
    linarith
  have hraw :
      (count : Rat) ≤ ((N : Rat) / 25 + 1) * density + endpoint :=
    hcount.trans (add_le_add
      (mul_le_mul_of_nonneg_right hlength hdensity) le_rfl)
  have hsum : 0 ≤ density + endpoint :=
    add_nonneg hdensity hendpoint
  have hLowerQ : (20_000_000 : Rat) ≤ N := by
    exact_mod_cast hLower
  have hmonotone :
      (density + endpoint) / (N : Rat) ≤
        (density + endpoint) / 20_000_000 :=
    div_le_div_of_nonneg_left hsum (by norm_num) hLowerQ
  calc
    (count : Rat) / N ≤
        (((N : Rat) / 25 + 1) * density + endpoint) / N :=
      div_le_div_of_nonneg_right hraw hNpos.le
    _ = density / 25 + (density + endpoint) / N := by
      field_simp [ne_of_gt hNpos]
      ring
    _ ≤ density / 25 + (density + endpoint) / 20_000_000 := by
      gcongr

theorem twentyMillionOddFinite19Prefix_ratio_le_public
    {N count : Nat} {density endpoint : Rat}
    (hLower : 20_000_000 ≤ N)
    (hdensity : 0 ≤ density)
    (hendpoint : 0 ≤ endpoint)
    (hcount : (count : Rat) ≤
      ((N / 25 + 1 : Nat) : Rat) * density + endpoint) :
    (count : Rat) / N ≤
      density / 25 + (density + endpoint) / 20_000_000 :=
  twentyMillionOddFinite19Prefix_ratio_le
    hLower hdensity hendpoint hcount

theorem twentyMillionOddFinite19RatPrefix_ratio_le
    {N : Nat} {count density endpoint : Rat}
    (hLower : 20_000_000 ≤ N)
    (hdensity : 0 ≤ density)
    (hendpoint : 0 ≤ endpoint)
    (hcount : count ≤
      ((N / 25 + 1 : Nat) : Rat) * density + endpoint) :
    count / N ≤
      density / 25 + (density + endpoint) / 20_000_000 := by
  have hNposNat : 0 < N := by omega
  have hNpos : (0 : Rat) < N := by exact_mod_cast hNposNat
  have hdiv : (((N / 25 : Nat) : Rat)) ≤ (N : Rat) / 25 :=
    Nat.cast_div_le
  have hlength :
      (((N / 25 + 1 : Nat) : Rat)) ≤ (N : Rat) / 25 + 1 := by
    norm_num at hdiv ⊢
    linarith
  have hraw :
      count ≤ ((N : Rat) / 25 + 1) * density + endpoint :=
    hcount.trans (add_le_add
      (mul_le_mul_of_nonneg_right hlength hdensity) le_rfl)
  have hsum : 0 ≤ density + endpoint :=
    add_nonneg hdensity hendpoint
  have hLowerQ : (20_000_000 : Rat) ≤ N := by
    exact_mod_cast hLower
  have hmonotone :
      (density + endpoint) / (N : Rat) ≤
        (density + endpoint) / 20_000_000 :=
    div_le_div_of_nonneg_left hsum (by norm_num) hLowerQ
  calc
    count / N ≤
        (((N : Rat) / 25 + 1) * density + endpoint) / N :=
      div_le_div_of_nonneg_right hraw hNpos.le
    _ = density / 25 + (density + endpoint) / N := by
      field_simp [ne_of_gt hNpos]
      ring
    _ ≤ density / 25 + (density + endpoint) / 20_000_000 := by
      gcongr

theorem twentyMillionOddFinite19_add_linear_bounds
    (length firstDensity secondDensity firstEndpoint secondEndpoint : Rat) :
    (length * firstDensity + firstEndpoint) +
        (length * secondDensity + secondEndpoint) =
      length * (firstDensity + secondDensity) +
        (firstEndpoint + secondEndpoint) := by
  ring

theorem twentyMillionOddFinite19_add_linear_bounds_three_endpoints
    (length firstDensity secondDensity firstEndpoint
      secondEndpoint₁ secondEndpoint₂ secondEndpoint₃ : Rat) :
    (length * firstDensity + firstEndpoint) +
        (((length * secondDensity + secondEndpoint₁) +
          secondEndpoint₂) + secondEndpoint₃) =
      length * (firstDensity + secondDensity) +
        (((firstEndpoint + secondEndpoint₁) +
          secondEndpoint₂) + secondEndpoint₃) := by
  ring

theorem twentyMillionOddFinite19_add_three_density_three_endpoint_bounds
    (length firstDensity secondDensity₁ secondDensity₂ secondDensity₃
      firstEndpoint secondEndpoint₁ secondEndpoint₂ secondEndpoint₃ : Rat) :
    (length * firstDensity + firstEndpoint) +
        (((length * ((secondDensity₁ + secondDensity₂) + secondDensity₃) +
          secondEndpoint₁) + secondEndpoint₂) + secondEndpoint₃) =
      length * (((firstDensity + secondDensity₁) +
        secondDensity₂) + secondDensity₃) +
        (((firstEndpoint + secondEndpoint₁) +
          secondEndpoint₂) + secondEndpoint₃) := by
  ring

theorem twentyMillionOddFinite19_add_two_density_two_endpoint_bounds
    (length firstDensity secondDensity₁ secondDensity₂
      firstEndpoint secondEndpoint₁ secondEndpoint₂ : Rat) :
    (length * firstDensity + firstEndpoint) +
        ((length * (secondDensity₁ + secondDensity₂) +
          secondEndpoint₁) + secondEndpoint₂) =
      length * ((firstDensity + secondDensity₁) + secondDensity₂) +
        ((firstEndpoint + secondEndpoint₁) + secondEndpoint₂) := by
  ring

theorem twentyMillionOddFinite19_natCast_le_rat
    {first second : Nat} (h : first ≤ second) :
    (first : Rat) ≤ (second : Rat) := by
  exact_mod_cast h

theorem twentyMillionOddFinite19_natCast_nonneg_rat (value : Nat) :
    (0 : Rat) ≤ (value : Rat) := by
  positivity

end Erdos848
