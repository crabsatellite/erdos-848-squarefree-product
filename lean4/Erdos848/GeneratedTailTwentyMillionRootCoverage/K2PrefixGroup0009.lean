import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0036
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0037
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0038
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0039

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0009NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 4349 then rootNormalQrMaskWords0036 p else
  if p ≤ 4493 then rootNormalQrMaskWords0037 p else
  if p ≤ 4639 then rootNormalQrMaskWords0038 p else
  if p ≤ 4783 then rootNormalQrMaskWords0039 p else
  []

def k2PrefixGroup0009TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 4349 then rootTwistQrMaskWords0036 p else
  if p ≤ 4493 then rootTwistQrMaskWords0037 p else
  if p ≤ 4639 then rootTwistQrMaskWords0038 p else
  if p ≤ 4783 then rootTwistQrMaskWords0039 p else
  []

def k2PrefixGroup0009MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0036 ++
  rootMaskSemanticGroup0037 ++
  rootMaskSemanticGroup0038 ++
  rootMaskSemanticGroup0039

def k2PrefixGroup0009 : List (List ℕ) :=
  [[4229],
    [4231],
    [4241],
    [4243],
    [4253],
    [4259],
    [4261],
    [4271],
    [4273],
    [4283],
    [4289],
    [4297],
    [4327],
    [4337],
    [4339],
    [4349],
    [4357],
    [4363],
    [4373],
    [4391],
    [4397],
    [4409],
    [4421],
    [4423],
    [4441],
    [4447],
    [4451],
    [4457],
    [4463],
    [4481],
    [4483],
    [4493],
    [4507],
    [4513],
    [4517],
    [4519],
    [4523],
    [4547],
    [4549],
    [4561],
    [4567],
    [4583],
    [4591],
    [4597],
    [4603],
    [4621],
    [4637],
    [4639],
    [4643],
    [4649],
    [4651],
    [4657],
    [4663],
    [4673],
    [4679],
    [4691],
    [4703],
    [4721],
    [4723],
    [4729],
    [4733],
    [4751],
    [4759],
    [4783]]

theorem k2PrefixGroup0009_support_covered :
    k2PrefixGroup0009.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k2PrefixGroup0009MaskPrimes))) = true := by
  rfl

theorem k2PrefixGroup0009_passes :
    k2PrefixGroup0009.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k2PrefixGroup0009NormalLookup
        k2PrefixGroup0009TwistLookup rootBaseWords 2) = true := by
  rfl

theorem k2PrefixGroup0009_mask_group0036_passes :
    rootMaskSemanticGroup0036.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0009NormalLookup
        k2PrefixGroup0009TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0036_passes) p hp
  have hnormal : k2PrefixGroup0009NormalLookup p =
      rootNormalQrMaskWords0036 p := by
    simp only [rootMaskSemanticGroup0036,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0009TwistLookup p =
      rootTwistQrMaskWords0036 p := by
    simp only [rootMaskSemanticGroup0036,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0009_mask_group0037_passes :
    rootMaskSemanticGroup0037.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0009NormalLookup
        k2PrefixGroup0009TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0037_passes) p hp
  have hnormal : k2PrefixGroup0009NormalLookup p =
      rootNormalQrMaskWords0037 p := by
    simp only [rootMaskSemanticGroup0037,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0009TwistLookup p =
      rootTwistQrMaskWords0037 p := by
    simp only [rootMaskSemanticGroup0037,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0009_mask_group0038_passes :
    rootMaskSemanticGroup0038.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0009NormalLookup
        k2PrefixGroup0009TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0038_passes) p hp
  have hnormal : k2PrefixGroup0009NormalLookup p =
      rootNormalQrMaskWords0038 p := by
    simp only [rootMaskSemanticGroup0038,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0009TwistLookup p =
      rootTwistQrMaskWords0038 p := by
    simp only [rootMaskSemanticGroup0038,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0009_mask_group0039_passes :
    rootMaskSemanticGroup0039.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0009NormalLookup
        k2PrefixGroup0009TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0039_passes) p hp
  have hnormal : k2PrefixGroup0009NormalLookup p =
      rootNormalQrMaskWords0039 p := by
    simp only [rootMaskSemanticGroup0039,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0009TwistLookup p =
      rootTwistQrMaskWords0039 p := by
    simp only [rootMaskSemanticGroup0039,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0009_mask_primes_pass :
    k2PrefixGroup0009MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0009NormalLookup
        k2PrefixGroup0009TwistLookup) = true := by
  simp only [k2PrefixGroup0009MaskPrimes, List.all_append]
  rw [k2PrefixGroup0009_mask_group0036_passes]
  rw [k2PrefixGroup0009_mask_group0037_passes]
  rw [k2PrefixGroup0009_mask_group0038_passes]
  rw [k2PrefixGroup0009_mask_group0039_passes]
  rfl

theorem k2PrefixGroup0009_certified
    {support : List ℕ} (hsupport : support ∈ k2PrefixGroup0009) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 2 support = true := by
  refine ⟨k2PrefixGroup0009NormalLookup,
    k2PrefixGroup0009TwistLookup, ?_,
    (List.all_eq_true.mp
      k2PrefixGroup0009_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k2PrefixGroup0009_support_covered) support hsupport
  have hmem : p ∈
      k2PrefixGroup0009MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k2PrefixGroup0009_mask_primes_pass) p hmem

#print axioms k2PrefixGroup0009_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
