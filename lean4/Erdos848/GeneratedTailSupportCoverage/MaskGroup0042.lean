import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0042 : List ℕ :=
  [2281, 2287, 2293, 2297, 2309, 2311, 2333, 2339]

def qrMaskCertificate_2281 :
    Erdos848.SquareWordMaskCertificate 2401 2281 (qrMaskWords 2281) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2287 :
    Erdos848.SquareWordMaskCertificate 2401 2287 (qrMaskWords 2287) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2293 :
    Erdos848.SquareWordMaskCertificate 2401 2293 (qrMaskWords 2293) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2297 :
    Erdos848.SquareWordMaskCertificate 2401 2297 (qrMaskWords 2297) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2309 :
    Erdos848.SquareWordMaskCertificate 2401 2309 (qrMaskWords 2309) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2311 :
    Erdos848.SquareWordMaskCertificate 2401 2311 (qrMaskWords 2311) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2333 :
    Erdos848.SquareWordMaskCertificate 2401 2333 (qrMaskWords 2333) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2339 :
    Erdos848.SquareWordMaskCertificate 2401 2339 (qrMaskWords 2339) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0042
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0042)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0042, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_2281.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2287.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2293.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2297.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2309.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2311.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2333.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2339.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
