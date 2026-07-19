import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0041 : List ℕ :=
  [2221, 2237, 2239, 2243, 2251, 2267, 2269, 2273]

def qrMaskCertificate_2221 :
    Erdos848.SquareWordMaskCertificate 2401 2221 (qrMaskWords 2221) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2237 :
    Erdos848.SquareWordMaskCertificate 2401 2237 (qrMaskWords 2237) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2239 :
    Erdos848.SquareWordMaskCertificate 2401 2239 (qrMaskWords 2239) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2243 :
    Erdos848.SquareWordMaskCertificate 2401 2243 (qrMaskWords 2243) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2251 :
    Erdos848.SquareWordMaskCertificate 2401 2251 (qrMaskWords 2251) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2267 :
    Erdos848.SquareWordMaskCertificate 2401 2267 (qrMaskWords 2267) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2269 :
    Erdos848.SquareWordMaskCertificate 2401 2269 (qrMaskWords 2269) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2273 :
    Erdos848.SquareWordMaskCertificate 2401 2273 (qrMaskWords 2273) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0041
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0041)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0041, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_2221.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2237.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2239.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2243.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2251.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2267.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2269.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2273.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
