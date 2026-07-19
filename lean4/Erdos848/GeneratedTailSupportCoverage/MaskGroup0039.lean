import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0039 : List ℕ :=
  [2087, 2089, 2099, 2111, 2113, 2129, 2131, 2137]

def qrMaskCertificate_2087 :
    Erdos848.SquareWordMaskCertificate 2401 2087 (qrMaskWords 2087) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2089 :
    Erdos848.SquareWordMaskCertificate 2401 2089 (qrMaskWords 2089) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2099 :
    Erdos848.SquareWordMaskCertificate 2401 2099 (qrMaskWords 2099) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2111 :
    Erdos848.SquareWordMaskCertificate 2401 2111 (qrMaskWords 2111) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2113 :
    Erdos848.SquareWordMaskCertificate 2401 2113 (qrMaskWords 2113) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2129 :
    Erdos848.SquareWordMaskCertificate 2401 2129 (qrMaskWords 2129) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2131 :
    Erdos848.SquareWordMaskCertificate 2401 2131 (qrMaskWords 2131) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2137 :
    Erdos848.SquareWordMaskCertificate 2401 2137 (qrMaskWords 2137) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0039
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0039)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0039, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_2087.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2089.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2099.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2111.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2113.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2129.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2131.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2137.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
