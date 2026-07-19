import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0053 : List ℕ :=
  [2963, 2969, 2971, 2999, 3001, 3011, 3019, 3023]

def qrMaskCertificate_2963 :
    Erdos848.SquareWordMaskCertificate 2401 2963 (qrMaskWords 2963) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2969 :
    Erdos848.SquareWordMaskCertificate 2401 2969 (qrMaskWords 2969) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2971 :
    Erdos848.SquareWordMaskCertificate 2401 2971 (qrMaskWords 2971) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2999 :
    Erdos848.SquareWordMaskCertificate 2401 2999 (qrMaskWords 2999) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3001 :
    Erdos848.SquareWordMaskCertificate 2401 3001 (qrMaskWords 3001) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3011 :
    Erdos848.SquareWordMaskCertificate 2401 3011 (qrMaskWords 3011) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3019 :
    Erdos848.SquareWordMaskCertificate 2401 3019 (qrMaskWords 3019) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3023 :
    Erdos848.SquareWordMaskCertificate 2401 3023 (qrMaskWords 3023) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0053
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0053)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0053, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_2963.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2969.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2971.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2999.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3001.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3011.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3019.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3023.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
