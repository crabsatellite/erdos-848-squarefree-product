import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0003
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0004

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0056NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 421 then rootNormalQrMaskWords0004 p else
  []

def k3PrefixGroup0056TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 421 then rootTwistQrMaskWords0004 p else
  []

def k3PrefixGroup0056MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0004

def k3PrefixGroup0056 : List (List ℕ) :=
  [[163, 313],
    [163, 317],
    [163, 331],
    [163, 337],
    [163, 347],
    [167, 173],
    [167, 179],
    [167, 181],
    [167, 191],
    [167, 193],
    [167, 197],
    [167, 199],
    [167, 211],
    [167, 223],
    [167, 227],
    [167, 229],
    [167, 233],
    [167, 239],
    [167, 241],
    [167, 251],
    [167, 257],
    [167, 263],
    [167, 269],
    [167, 271],
    [167, 277],
    [167, 281],
    [167, 283],
    [167, 293],
    [167, 307],
    [167, 311],
    [167, 313],
    [167, 317],
    [167, 331],
    [167, 337],
    [173, 179],
    [173, 181],
    [173, 191],
    [173, 193],
    [173, 197],
    [173, 199],
    [173, 211],
    [173, 223],
    [173, 227],
    [173, 229],
    [173, 233],
    [173, 239],
    [173, 241],
    [173, 251],
    [173, 257],
    [173, 263],
    [173, 269],
    [173, 271],
    [173, 277],
    [173, 281],
    [173, 283],
    [173, 293],
    [173, 307],
    [173, 311],
    [173, 313],
    [173, 317],
    [173, 331],
    [179, 181],
    [179, 191],
    [179, 193]]

theorem k3PrefixGroup0056_support_covered :
    k3PrefixGroup0056.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0056MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0056_passes :
    k3PrefixGroup0056.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k3PrefixGroup0056NormalLookup
        k3PrefixGroup0056TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0056_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0056NormalLookup
        k3PrefixGroup0056TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k3PrefixGroup0056NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0056TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k3PrefixGroup0056_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0056NormalLookup
        k3PrefixGroup0056TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k3PrefixGroup0056NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0056TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k3PrefixGroup0056_mask_group0004_passes :
    rootMaskSemanticGroup0004.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0056NormalLookup
        k3PrefixGroup0056TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0004_passes) p hp
  have hnormal : k3PrefixGroup0056NormalLookup p =
      rootNormalQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0056TwistLookup p =
      rootTwistQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k3PrefixGroup0056_mask_primes_pass :
    k3PrefixGroup0056MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0056NormalLookup
        k3PrefixGroup0056TwistLookup) = true := by
  simp only [k3PrefixGroup0056MaskPrimes, List.all_append]
  rw [k3PrefixGroup0056_mask_group0002_passes]
  rw [k3PrefixGroup0056_mask_group0003_passes]
  rw [k3PrefixGroup0056_mask_group0004_passes]
  rfl

theorem k3PrefixGroup0056_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0056) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0056NormalLookup,
    k3PrefixGroup0056TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0056_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0056_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0056MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0056_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0056_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
