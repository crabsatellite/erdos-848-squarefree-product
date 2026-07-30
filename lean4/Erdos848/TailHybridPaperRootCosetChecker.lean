import Erdos848.TailHybridPaperRootChecker
import Erdos848.TailSupportScanChecker

namespace Erdos848

/-!
# Mod-five base masks for the paper root checker

The QR checker is independent of the fixed nonzero square coset modulo five.
This small layer certifies each of the two possible initial masks and exposes
both the word bound required by the recursive scan and the bit-level semantic
bridge needed by the actual-support proof.
-/

structure ModFiveCosetWordMaskCertificate
    (M : Nat) (squareCoset : Bool) (words : List Nat) where
  wordBoundChecked :
    words.all (fun word => decide (word < 2 ^ 64)) = true
  semanticChecked :
    allNatRange
      (fun index =>
        wordMaskTestBit words index ==
          modFiveCosetAccepts squareCoset (index + 1))
      0 M = true

theorem ModFiveCosetWordMaskCertificate.word_lt
    {M word : Nat} {squareCoset : Bool} {words : List Nat}
    (certificate :
      ModFiveCosetWordMaskCertificate M squareCoset words)
    (hword : word ∈ words) :
    word < 2 ^ 64 := by
  exact of_decide_eq_true
    ((List.all_eq_true.mp certificate.wordBoundChecked) word hword)

theorem ModFiveCosetWordMaskCertificate.testBit_eq_true
    {M m : Nat} {squareCoset : Bool} {words : List Nat}
    (certificate :
      ModFiveCosetWordMaskCertificate M squareCoset words)
    (hmpos : 0 < m) (hm : m ≤ M)
    (hcoset : modFiveCosetAccepts squareCoset m = true) :
    wordMaskTestBit words (m - 1) = true := by
  have hchecked :=
    (allNatRange_eq_true_iff _ _ _).mp certificate.semanticChecked
      (m - 1) (by omega) (by omega)
  have heq := beq_iff_eq.mp hchecked
  have hmback : m - 1 + 1 = m := by omega
  exact heq.trans (by rw [hmback]; exact hcoset)

theorem ModFiveCosetWordMaskCertificate.testBit_eq_accepts
    {M m : Nat} {squareCoset : Bool} {words : List Nat}
    (certificate :
      ModFiveCosetWordMaskCertificate M squareCoset words)
    (hmpos : 0 < m) (hm : m ≤ M) :
    wordMaskTestBit words (m - 1) =
      modFiveCosetAccepts squareCoset m := by
  have hchecked :=
    (allNatRange_eq_true_iff _ _ _).mp certificate.semanticChecked
      (m - 1) (by omega) (by omega)
  have heq := beq_iff_eq.mp hchecked
  have hmback : m - 1 + 1 = m := by omega
  simpa [hmback] using heq

#print axioms ModFiveCosetWordMaskCertificate.word_lt
#print axioms ModFiveCosetWordMaskCertificate.testBit_eq_true
#print axioms ModFiveCosetWordMaskCertificate.testBit_eq_accepts

end Erdos848
