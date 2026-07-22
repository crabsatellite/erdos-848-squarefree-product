import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0004
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0005

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0082NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 421 then rootNormalQrMaskWords0004 p else
  if p ≤ 521 then rootNormalQrMaskWords0005 p else
  []

def k3PrefixGroup0082TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 421 then rootTwistQrMaskWords0004 p else
  if p ≤ 521 then rootTwistQrMaskWords0005 p else
  []

def k3PrefixGroup0082MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0004 ++
  rootMaskSemanticGroup0005

def k3PrefixGroup0082 : List (List ℕ) :=
  [[181, 367],
    [181, 373],
    [181, 379],
    [181, 383],
    [181, 389],
    [181, 397],
    [181, 401],
    [181, 409],
    [181, 419],
    [181, 421],
    [181, 431],
    [181, 433],
    [181, 439],
    [181, 443],
    [181, 449],
    [181, 457],
    [181, 461],
    [181, 463],
    [191, 193],
    [191, 197],
    [191, 199],
    [191, 211],
    [191, 223],
    [191, 227],
    [191, 229],
    [191, 233],
    [191, 239],
    [191, 241],
    [191, 251],
    [191, 257],
    [191, 263],
    [191, 269],
    [191, 271],
    [191, 277],
    [191, 281],
    [191, 283],
    [191, 293],
    [191, 307],
    [191, 311],
    [191, 313],
    [191, 317],
    [191, 331],
    [191, 337],
    [191, 347],
    [191, 349],
    [191, 353],
    [191, 359],
    [191, 367],
    [191, 373],
    [191, 379],
    [191, 383],
    [191, 389],
    [191, 397],
    [191, 401],
    [191, 409],
    [191, 419],
    [191, 421],
    [191, 431],
    [191, 433],
    [191, 439],
    [191, 443],
    [191, 449],
    [193, 197],
    [193, 199]]

theorem k3PrefixGroup0082_support_covered :
    k3PrefixGroup0082.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0082MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0082_passes :
    k3PrefixGroup0082.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0082NormalLookup
        k3PrefixGroup0082TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0082_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0082NormalLookup
        k3PrefixGroup0082TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k3PrefixGroup0082NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0082TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0082_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0082NormalLookup
        k3PrefixGroup0082TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k3PrefixGroup0082NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0082TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0082_mask_group0004_passes :
    rootMaskSemanticGroup0004.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0082NormalLookup
        k3PrefixGroup0082TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0004_passes) p hp
  have hnormal : k3PrefixGroup0082NormalLookup p =
      rootNormalQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0082TwistLookup p =
      rootTwistQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0082_mask_group0005_passes :
    rootMaskSemanticGroup0005.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0082NormalLookup
        k3PrefixGroup0082TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0005_passes) p hp
  have hnormal : k3PrefixGroup0082NormalLookup p =
      rootNormalQrMaskWords0005 p := by
    simp only [rootMaskSemanticGroup0005,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0082TwistLookup p =
      rootTwistQrMaskWords0005 p := by
    simp only [rootMaskSemanticGroup0005,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0082_mask_primes_pass :
    k3PrefixGroup0082MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0082NormalLookup
        k3PrefixGroup0082TwistLookup) = true := by
  simp only [k3PrefixGroup0082MaskPrimes, List.all_append]
  rw [k3PrefixGroup0082_mask_group0002_passes]
  rw [k3PrefixGroup0082_mask_group0003_passes]
  rw [k3PrefixGroup0082_mask_group0004_passes]
  rw [k3PrefixGroup0082_mask_group0005_passes]
  rfl

theorem k3PrefixGroup0082_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0082) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0082NormalLookup,
    k3PrefixGroup0082TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0082_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0082_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0082MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0082_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0082_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
