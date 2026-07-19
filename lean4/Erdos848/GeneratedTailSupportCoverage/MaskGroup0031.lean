import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0031 : List ℕ :=
  [1597, 1601, 1607, 1609, 1613, 1619, 1621, 1627]

def qrMaskCertificate_1597 :
    Erdos848.SquareWordMaskCertificate 2401 1597 (qrMaskWords 1597) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1601 :
    Erdos848.SquareWordMaskCertificate 2401 1601 (qrMaskWords 1601) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1607 :
    Erdos848.SquareWordMaskCertificate 2401 1607 (qrMaskWords 1607) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1609 :
    Erdos848.SquareWordMaskCertificate 2401 1609 (qrMaskWords 1609) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1613 :
    Erdos848.SquareWordMaskCertificate 2401 1613 (qrMaskWords 1613) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1619 :
    Erdos848.SquareWordMaskCertificate 2401 1619 (qrMaskWords 1619) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1621 :
    Erdos848.SquareWordMaskCertificate 2401 1621 (qrMaskWords 1621) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1627 :
    Erdos848.SquareWordMaskCertificate 2401 1627 (qrMaskWords 1627) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0031
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0031)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0031, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_1597.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1601.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1607.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1609.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1613.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1619.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1621.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1627.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
