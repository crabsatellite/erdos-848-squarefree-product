import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0013 : List ℕ :=
  [587, 593, 599, 601, 607, 613, 617, 619]

def qrMaskCertificate_587 :
    Erdos848.SquareWordMaskCertificate 2401 587 (qrMaskWords 587) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_593 :
    Erdos848.SquareWordMaskCertificate 2401 593 (qrMaskWords 593) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_599 :
    Erdos848.SquareWordMaskCertificate 2401 599 (qrMaskWords 599) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_601 :
    Erdos848.SquareWordMaskCertificate 2401 601 (qrMaskWords 601) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_607 :
    Erdos848.SquareWordMaskCertificate 2401 607 (qrMaskWords 607) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_613 :
    Erdos848.SquareWordMaskCertificate 2401 613 (qrMaskWords 613) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_617 :
    Erdos848.SquareWordMaskCertificate 2401 617 (qrMaskWords 617) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_619 :
    Erdos848.SquareWordMaskCertificate 2401 619 (qrMaskWords 619) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0013
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0013)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0013, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_587.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_593.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_599.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_601.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_607.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_613.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_617.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_619.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
