import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0047 : List ℕ :=
  [2609, 2617, 2621, 2633, 2647, 2657, 2659, 2663]

def qrMaskCertificate_2609 :
    Erdos848.SquareWordMaskCertificate 2401 2609 (qrMaskWords 2609) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2617 :
    Erdos848.SquareWordMaskCertificate 2401 2617 (qrMaskWords 2617) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2621 :
    Erdos848.SquareWordMaskCertificate 2401 2621 (qrMaskWords 2621) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2633 :
    Erdos848.SquareWordMaskCertificate 2401 2633 (qrMaskWords 2633) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2647 :
    Erdos848.SquareWordMaskCertificate 2401 2647 (qrMaskWords 2647) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2657 :
    Erdos848.SquareWordMaskCertificate 2401 2657 (qrMaskWords 2657) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2659 :
    Erdos848.SquareWordMaskCertificate 2401 2659 (qrMaskWords 2659) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2663 :
    Erdos848.SquareWordMaskCertificate 2401 2663 (qrMaskWords 2663) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0047
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0047)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0047, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_2609.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2617.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2621.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2633.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2647.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2657.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2659.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2663.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
