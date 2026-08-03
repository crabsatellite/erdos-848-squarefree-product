import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0004
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0005
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0006
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0007
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0008

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0046NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 421 then rootNormalQrMaskWords0004 p else
  if p ≤ 521 then rootNormalQrMaskWords0005 p else
  if p ≤ 619 then rootNormalQrMaskWords0006 p else
  if p ≤ 733 then rootNormalQrMaskWords0007 p else
  if p ≤ 839 then rootNormalQrMaskWords0008 p else
  []

def k3PrefixGroup0046TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 421 then rootTwistQrMaskWords0004 p else
  if p ≤ 521 then rootTwistQrMaskWords0005 p else
  if p ≤ 619 then rootTwistQrMaskWords0006 p else
  if p ≤ 733 then rootTwistQrMaskWords0007 p else
  if p ≤ 839 then rootTwistQrMaskWords0008 p else
  []

def k3PrefixGroup0046MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0004 ++
  rootMaskSemanticGroup0005 ++
  rootMaskSemanticGroup0006 ++
  rootMaskSemanticGroup0007 ++
  rootMaskSemanticGroup0008

def k3PrefixGroup0046 : List (List ℕ) :=
  [[47, 347],
    [47, 349],
    [47, 353],
    [47, 359],
    [47, 367],
    [47, 373],
    [47, 379],
    [47, 383],
    [47, 389],
    [47, 397],
    [47, 401],
    [47, 409],
    [47, 419],
    [47, 421],
    [47, 431],
    [47, 433],
    [47, 439],
    [47, 443],
    [47, 449],
    [47, 457],
    [47, 461],
    [47, 463],
    [47, 467],
    [47, 479],
    [47, 487],
    [47, 491],
    [47, 499],
    [47, 503],
    [47, 509],
    [47, 521],
    [47, 523],
    [47, 541],
    [47, 547],
    [47, 557],
    [47, 563],
    [47, 569],
    [47, 571],
    [47, 577],
    [47, 587],
    [47, 593],
    [47, 599],
    [47, 601],
    [47, 607],
    [47, 613],
    [47, 617],
    [47, 619],
    [47, 631],
    [47, 641],
    [47, 643],
    [47, 647],
    [47, 653],
    [47, 659],
    [47, 661],
    [47, 673],
    [47, 677],
    [47, 683],
    [47, 691],
    [47, 701],
    [47, 709],
    [47, 719],
    [47, 727],
    [47, 733],
    [47, 739],
    [47, 743]]

theorem k3PrefixGroup0046_support_covered :
    k3PrefixGroup0046.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0046MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0046_passes :
    k3PrefixGroup0046.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0046NormalLookup
        k3PrefixGroup0046TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0046_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0046NormalLookup
        k3PrefixGroup0046TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k3PrefixGroup0046NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0046TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0046_mask_group0004_passes :
    rootMaskSemanticGroup0004.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0046NormalLookup
        k3PrefixGroup0046TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0004_passes) p hp
  have hnormal : k3PrefixGroup0046NormalLookup p =
      rootNormalQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0046TwistLookup p =
      rootTwistQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0046_mask_group0005_passes :
    rootMaskSemanticGroup0005.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0046NormalLookup
        k3PrefixGroup0046TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0005_passes) p hp
  have hnormal : k3PrefixGroup0046NormalLookup p =
      rootNormalQrMaskWords0005 p := by
    simp only [rootMaskSemanticGroup0005,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0046TwistLookup p =
      rootTwistQrMaskWords0005 p := by
    simp only [rootMaskSemanticGroup0005,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0046_mask_group0006_passes :
    rootMaskSemanticGroup0006.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0046NormalLookup
        k3PrefixGroup0046TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0006_passes) p hp
  have hnormal : k3PrefixGroup0046NormalLookup p =
      rootNormalQrMaskWords0006 p := by
    simp only [rootMaskSemanticGroup0006,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0046TwistLookup p =
      rootTwistQrMaskWords0006 p := by
    simp only [rootMaskSemanticGroup0006,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0046_mask_group0007_passes :
    rootMaskSemanticGroup0007.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0046NormalLookup
        k3PrefixGroup0046TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0007_passes) p hp
  have hnormal : k3PrefixGroup0046NormalLookup p =
      rootNormalQrMaskWords0007 p := by
    simp only [rootMaskSemanticGroup0007,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0046TwistLookup p =
      rootTwistQrMaskWords0007 p := by
    simp only [rootMaskSemanticGroup0007,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0046_mask_group0008_passes :
    rootMaskSemanticGroup0008.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0046NormalLookup
        k3PrefixGroup0046TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0008_passes) p hp
  have hnormal : k3PrefixGroup0046NormalLookup p =
      rootNormalQrMaskWords0008 p := by
    simp only [rootMaskSemanticGroup0008,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0046TwistLookup p =
      rootTwistQrMaskWords0008 p := by
    simp only [rootMaskSemanticGroup0008,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0046_mask_primes_pass :
    k3PrefixGroup0046MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0046NormalLookup
        k3PrefixGroup0046TwistLookup) = true := by
  simp only [k3PrefixGroup0046MaskPrimes, List.all_append]
  rw [k3PrefixGroup0046_mask_group0000_passes]
  rw [k3PrefixGroup0046_mask_group0004_passes]
  rw [k3PrefixGroup0046_mask_group0005_passes]
  rw [k3PrefixGroup0046_mask_group0006_passes]
  rw [k3PrefixGroup0046_mask_group0007_passes]
  rw [k3PrefixGroup0046_mask_group0008_passes]
  rfl

theorem k3PrefixGroup0046_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0046) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0046NormalLookup,
    k3PrefixGroup0046TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0046_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0046_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0046MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0046_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0046_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
