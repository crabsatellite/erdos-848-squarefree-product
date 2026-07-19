import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0040 : List ℕ :=
  [2141, 2143, 2153, 2161, 2179, 2203, 2207, 2213]

def qrMaskCertificate_2141 :
    Erdos848.SquareWordMaskCertificate 2401 2141 (qrMaskWords 2141) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2143 :
    Erdos848.SquareWordMaskCertificate 2401 2143 (qrMaskWords 2143) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2153 :
    Erdos848.SquareWordMaskCertificate 2401 2153 (qrMaskWords 2153) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2161 :
    Erdos848.SquareWordMaskCertificate 2401 2161 (qrMaskWords 2161) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2179 :
    Erdos848.SquareWordMaskCertificate 2401 2179 (qrMaskWords 2179) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2203 :
    Erdos848.SquareWordMaskCertificate 2401 2203 (qrMaskWords 2203) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2207 :
    Erdos848.SquareWordMaskCertificate 2401 2207 (qrMaskWords 2207) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2213 :
    Erdos848.SquareWordMaskCertificate 2401 2213 (qrMaskWords 2213) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0040
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0040)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0040, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_2141.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2143.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2153.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2161.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2179.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2203.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2207.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2213.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
