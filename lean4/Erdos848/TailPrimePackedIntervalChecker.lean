import Erdos848.TailPrimeUpperIntervalTreeChecker
import Erdos848.PrattCore

namespace Erdos848

/-!
# Packed composite witnesses for recoverable prime-count upper bounds

Five 12-bit factor codes are stored in each natural number.  Code zero means
"retain as a candidate"; every nonzero code is checked by the kernel to be a
proper divisor.  The producer may retain composites, but it cannot discard a
prime.  Fixed-width shards make a long interval resumable without one proof
constructor per integer.
-/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def packedCompositeFactorCode (packed : Array Nat) (index : Nat) : Nat :=
  ((packed[index / 5]?).getD 0 / 4096 ^ (index % 5)) % 4096

def packedCompositeSingleWordFactorCode
    (packedWord index : Nat) : Nat :=
  (packedWord / 4096 ^ index) % 4096

def packedCompositeCandidateOffsets
    (width : Nat) (packed : Array Nat) : Finset Nat :=
  (Finset.range width).filter fun offset =>
    packedCompositeFactorCode packed offset = 0

def packedCompositeCandidateWindowOffsets
    (offset width : Nat) (packed : Array Nat) : Finset Nat :=
  (Finset.range width).filter fun windowOffset =>
    packedCompositeFactorCode packed (offset + windowOffset) = 0

def packedCompositeSingleWordCandidateOffsets
    (width packedWord : Nat) : Finset Nat :=
  (Finset.range width).filter fun offset =>
    packedCompositeSingleWordFactorCode packedWord offset = 0

def packedCompositeIntervalPasses
    (start width : Nat) (packed : Array Nat) : Bool :=
  decide (width ≤ packed.size * 5) &&
    allNatRange
      (fun offset =>
        let factor := packedCompositeFactorCode packed offset
        decide (
          factor = 0 ∨
          (2 ≤ factor ∧
            factor < start + offset ∧
          factor ∣ start + offset)))
      0 width

def packedCompositeWindowPasses
    (start offset width : Nat) (packed : Array Nat) : Bool :=
  decide (offset + width ≤ packed.size * 5) &&
    allNatRange
      (fun windowOffset =>
        let factor :=
          packedCompositeFactorCode packed (offset + windowOffset)
        decide (
          factor = 0 ∨
          (2 ≤ factor ∧
            factor < start + offset + windowOffset ∧
            factor ∣ start + offset + windowOffset)))
      0 width

def packedCompositeSingleWordPasses
    (start width packedWord : Nat) : Bool :=
  allNatRange
    (fun offset =>
      let factor :=
        packedCompositeSingleWordFactorCode packedWord offset
      decide (
        factor = 0 ∨
        (2 ≤ factor ∧
          factor < start + offset ∧
          factor ∣ start + offset)))
    0 width

structure PackedCompositeIntervalCertificate
    (start width candidateCount : Nat) (packed : Array Nat) where
  checked : packedCompositeIntervalPasses start width packed = true
  candidate_card_eq :
    (packedCompositeCandidateOffsets width packed).card = candidateCount

structure PackedCompositeWindowCertificate
    (start offset width candidateCount : Nat) (packed : Array Nat) where
  checked : packedCompositeWindowPasses start offset width packed = true
  candidate_card_eq :
    (packedCompositeCandidateWindowOffsets
      offset width packed).card = candidateCount

structure PackedCompositeSingleWordCertificate
    (start width candidateCount packedWord : Nat) where
  checked :
    packedCompositeSingleWordPasses start width packedWord = true
  candidate_card_eq :
    (packedCompositeSingleWordCandidateOffsets
      width packedWord).card = candidateCount

theorem PackedCompositeSingleWordCertificate.factor_zero_of_prime
    {start width candidateCount packedWord n : Nat}
    (certificate :
      PackedCompositeSingleWordCertificate
        start width candidateCount packedWord)
    (hstart : start ≤ n) (hstop : n < start + width)
    (hnPrime : Nat.Prime n) :
    packedCompositeSingleWordFactorCode packedWord (n - start) = 0 := by
  have hrow := (allNatRange_eq_true_iff _ _ _).mp certificate.checked
    (n - start) (by omega) (by omega)
  have hrowData :
      packedCompositeSingleWordFactorCode packedWord (n - start) = 0 ∨
      (2 ≤ packedCompositeSingleWordFactorCode packedWord (n - start) ∧
        packedCompositeSingleWordFactorCode packedWord (n - start) <
          start + (n - start) ∧
        packedCompositeSingleWordFactorCode packedWord (n - start) ∣
          start + (n - start)) :=
    of_decide_eq_true hrow
  rcases hrowData with hzero | ⟨hfactorTwo, hfactorLt, hfactorDvd⟩
  · exact hzero
  · have hsum : start + (n - start) = n := by omega
    rw [hsum] at hfactorLt hfactorDvd
    rcases hnPrime.eq_one_or_self_of_dvd
        (packedCompositeSingleWordFactorCode
          packedWord (n - start)) hfactorDvd with
      hOne | hSelf
    · omega
    · omega

theorem PackedCompositeSingleWordCertificate.primeCounting_endpoint_le
    {start width candidateCount packedWord : Nat}
    (certificate :
      PackedCompositeSingleWordCertificate
        start width candidateCount packedWord)
    (hwidth : 0 < width) :
    Nat.primeCounting (start + width - 1) ≤
      Nat.primeCounting (start - 1) + candidateCount := by
  let candidates :=
    (packedCompositeSingleWordCandidateOffsets
      width packedWord).image (fun offset => start + offset)
  have hsubset :
      Nat.primesLE (start + width - 1) ⊆
        Nat.primesLE (start - 1) ∪ candidates := by
    intro p hp
    have hpData := Nat.mem_primesLE.mp hp
    by_cases hpStart : p < start
    · exact Finset.mem_union.mpr <| Or.inl <|
        Nat.mem_primesLE.mpr ⟨by omega, hpData.2⟩
    · apply Finset.mem_union.mpr
      apply Or.inr
      apply Finset.mem_image.mpr
      refine ⟨p - start, ?_, by omega⟩
      apply Finset.mem_filter.mpr
      exact ⟨Finset.mem_range.mpr (by omega),
        certificate.factor_zero_of_prime
          (n := p) (by omega) (by omega) hpData.2⟩
  have hcandidates :
      candidates.card =
        (packedCompositeSingleWordCandidateOffsets
          width packedWord).card := by
    apply Finset.card_image_iff.mpr
    intro left _ right _ heq
    exact Nat.add_left_cancel heq
  have hcardBound := Finset.card_le_card hsubset
  calc
    Nat.primeCounting (start + width - 1) =
        (Nat.primesLE (start + width - 1)).card := by simp
    _ ≤ (Nat.primesLE (start - 1) ∪ candidates).card := hcardBound
    _ ≤ (Nat.primesLE (start - 1)).card + candidates.card :=
      Finset.card_union_le _ _
    _ = Nat.primeCounting (start - 1) +
        (packedCompositeSingleWordCandidateOffsets
          width packedWord).card := by
      rw [Nat.primesLE_card_eq_primeCounting, hcandidates]
    _ = Nat.primeCounting (start - 1) + candidateCount := by
      rw [certificate.candidate_card_eq]

theorem PackedCompositeWindowCertificate.factor_zero_of_prime
    {start offset width candidateCount n : Nat} {packed : Array Nat}
    (certificate :
      PackedCompositeWindowCertificate
        start offset width candidateCount packed)
    (hstart : start + offset ≤ n)
    (hstop : n < start + offset + width)
    (hnPrime : Nat.Prime n) :
    packedCompositeFactorCode
        packed (offset + (n - (start + offset))) = 0 := by
  have hchecked :=
    Bool.and_eq_true_iff.mp certificate.checked |>.2
  have hoffset : n - (start + offset) < width := by omega
  have hrow := (allNatRange_eq_true_iff _ _ _).mp hchecked
    (n - (start + offset)) (by omega) (by omega)
  have hrowData :
      packedCompositeFactorCode
          packed (offset + (n - (start + offset))) = 0 ∨
      (2 ≤ packedCompositeFactorCode
          packed (offset + (n - (start + offset))) ∧
        packedCompositeFactorCode
            packed (offset + (n - (start + offset))) <
          start + offset + (n - (start + offset)) ∧
        packedCompositeFactorCode
            packed (offset + (n - (start + offset))) ∣
          start + offset + (n - (start + offset))) :=
    of_decide_eq_true hrow
  rcases hrowData with hzero | ⟨hfactorTwo, hfactorLt, hfactorDvd⟩
  · exact hzero
  · have hsum :
        start + offset + (n - (start + offset)) = n := by
      omega
    rw [hsum] at hfactorLt hfactorDvd
    rcases hnPrime.eq_one_or_self_of_dvd
        (packedCompositeFactorCode
          packed (offset + (n - (start + offset)))) hfactorDvd with
      hOne | hSelf
    · omega
    · omega

theorem PackedCompositeWindowCertificate.primeCounting_endpoint_le
    {start offset width candidateCount : Nat} {packed : Array Nat}
    (certificate :
      PackedCompositeWindowCertificate
        start offset width candidateCount packed)
    (hwidth : 0 < width) :
    Nat.primeCounting (start + offset + width - 1) ≤
      Nat.primeCounting (start + offset - 1) + candidateCount := by
  let candidates :=
    (packedCompositeCandidateWindowOffsets
      offset width packed).image
        (fun windowOffset => start + offset + windowOffset)
  have hsubset :
      Nat.primesLE (start + offset + width - 1) ⊆
        Nat.primesLE (start + offset - 1) ∪ candidates := by
    intro p hp
    have hpData := Nat.mem_primesLE.mp hp
    by_cases hpStart : p < start + offset
    · exact Finset.mem_union.mpr <| Or.inl <|
        Nat.mem_primesLE.mpr ⟨by omega, hpData.2⟩
    · apply Finset.mem_union.mpr
      apply Or.inr
      apply Finset.mem_image.mpr
      refine ⟨p - (start + offset), ?_, by omega⟩
      apply Finset.mem_filter.mpr
      exact ⟨Finset.mem_range.mpr (by omega),
        certificate.factor_zero_of_prime
          (n := p) (by omega) (by omega) hpData.2⟩
  have hcandidates :
      candidates.card =
        (packedCompositeCandidateWindowOffsets
          offset width packed).card := by
    apply Finset.card_image_iff.mpr
    intro left _ right _ heq
    have houter :
        offset + left = offset + right :=
      Nat.add_left_cancel (by
        simpa only [Nat.add_assoc] using heq)
    exact Nat.add_left_cancel houter
  have hcardBound := Finset.card_le_card hsubset
  calc
    Nat.primeCounting (start + offset + width - 1) =
        (Nat.primesLE (start + offset + width - 1)).card := by simp
    _ ≤ (Nat.primesLE (start + offset - 1) ∪ candidates).card :=
      hcardBound
    _ ≤ (Nat.primesLE (start + offset - 1)).card + candidates.card :=
      Finset.card_union_le _ _
    _ = Nat.primeCounting (start + offset - 1) +
        (packedCompositeCandidateWindowOffsets
          offset width packed).card := by
      rw [Nat.primesLE_card_eq_primeCounting, hcandidates]
    _ = Nat.primeCounting (start + offset - 1) + candidateCount := by
      rw [certificate.candidate_card_eq]

/-- A balanced structural wrapper around packed five-integer witnesses.
Each word is checked locally; a node merely concatenates adjacent intervals.
This keeps strict kernel replay while avoiding one 30,030-deep Boolean
reduction and without asking Lean to rediscover any factor. -/
inductive PackedCompositeIntervalProofTree : Nat → Nat → Nat → Type
  | word (start width candidateCount packedWord : Nat)
      (hwidth : 0 < width)
      (certificate :
        PackedCompositeSingleWordCertificate
          start width candidateCount packedWord) :
      PackedCompositeIntervalProofTree start width candidateCount
  | node {start leftWidth rightWidth leftCount rightCount : Nat}
      (left :
        PackedCompositeIntervalProofTree
          start leftWidth leftCount)
      (right :
        PackedCompositeIntervalProofTree
          (start + leftWidth) rightWidth rightCount) :
      PackedCompositeIntervalProofTree
        start (leftWidth + rightWidth) (leftCount + rightCount)

theorem packedCompositeWordWidth32_pos : 0 < 32 := by
  omega

theorem packedCompositeWordWidth64_pos : 0 < 64 := by
  omega

theorem packedCompositeWordWidth14_pos : 0 < 14 := by
  omega

theorem packedCompositeWordWidth128_pos : 0 < 128 := by
  omega

theorem packedCompositeWordWidth78_pos : 0 < 78 := by
  omega

theorem packedCompositeWordWidth256_pos : 0 < 256 := by
  omega

theorem packedCompositeWordWidth512_pos : 0 < 512 := by
  omega

theorem packedCompositeWordWidth334_pos : 0 < 334 := by
  omega

namespace PackedCompositeIntervalProofTree

theorem primeCounting_endpoint_le_structural
    {start width candidateCount : Nat}
    (tree :
      PackedCompositeIntervalProofTree start width candidateCount) :
    Nat.primeCounting (start + width - 1) ≤
      Nat.primeCounting (start - 1) + candidateCount := by
  induction tree with
  | word start width candidateCount packedWord hwidth certificate =>
      simpa using certificate.primeCounting_endpoint_le hwidth
  | node left right hleft hright =>
      simp only [Nat.add_assoc] at hright ⊢
      omega

#print axioms
  PackedCompositeIntervalProofTree.primeCounting_endpoint_le_structural

end PackedCompositeIntervalProofTree

theorem PackedCompositeIntervalCertificate.factor_zero_of_prime
    {start width candidateCount n : Nat} {packed : Array Nat}
    (certificate :
      PackedCompositeIntervalCertificate
        start width candidateCount packed)
    (hstart : start ≤ n) (hstop : n < start + width)
    (hnPrime : Nat.Prime n) :
    packedCompositeFactorCode packed (n - start) = 0 := by
  have hchecked :=
    Bool.and_eq_true_iff.mp certificate.checked |>.2
  have hoffset : n - start < width := by omega
  have hrow := (allNatRange_eq_true_iff _ _ _).mp hchecked
    (n - start) (by omega) (by omega)
  have hrowData :
      packedCompositeFactorCode packed (n - start) = 0 ∨
      (2 ≤ packedCompositeFactorCode packed (n - start) ∧
        packedCompositeFactorCode packed (n - start) <
          start + (n - start) ∧
        packedCompositeFactorCode packed (n - start) ∣
          start + (n - start)) :=
    of_decide_eq_true hrow
  rcases hrowData with hzero | ⟨hfactorTwo, hfactorLt, hfactorDvd⟩
  · exact hzero
  · have hsum : start + (n - start) = n := by omega
    rw [hsum] at hfactorLt hfactorDvd
    rcases hnPrime.eq_one_or_self_of_dvd
        (packedCompositeFactorCode packed (n - start)) hfactorDvd with
      hOne | hSelf
    · omega
    · omega

theorem PackedCompositeIntervalCertificate.prime_offset_mem
    {start width candidateCount n : Nat} {packed : Array Nat}
    (certificate :
      PackedCompositeIntervalCertificate
        start width candidateCount packed)
    (hstart : start ≤ n) (hstop : n < start + width)
    (hnPrime : Nat.Prime n) :
    n - start ∈ packedCompositeCandidateOffsets width packed := by
  apply Finset.mem_filter.mpr
  exact ⟨Finset.mem_range.mpr (by omega),
    certificate.factor_zero_of_prime hstart hstop hnPrime⟩

theorem PackedCompositeIntervalCertificate.primeCounting_endpoint_le
    {start width candidateCount : Nat} {packed : Array Nat}
    (certificate :
      PackedCompositeIntervalCertificate
        start width candidateCount packed)
    (hwidth : 0 < width) :
    Nat.primeCounting (start + width - 1) ≤
      Nat.primeCounting (start - 1) + candidateCount := by
  let candidates :=
    (packedCompositeCandidateOffsets width packed).image
      (fun offset => start + offset)
  have hsubset :
      Nat.primesLE (start + width - 1) ⊆
        Nat.primesLE (start - 1) ∪ candidates := by
    intro p hp
    have hpData := Nat.mem_primesLE.mp hp
    by_cases hpStart : p < start
    · exact Finset.mem_union.mpr <| Or.inl <|
        Nat.mem_primesLE.mpr ⟨by omega, hpData.2⟩
    · apply Finset.mem_union.mpr
      apply Or.inr
      apply Finset.mem_image.mpr
      refine ⟨p - start,
        certificate.prime_offset_mem
          (Nat.le_of_not_gt hpStart) (by omega) hpData.2, ?_⟩
      omega
  have hcandidates :
      candidates.card =
        (packedCompositeCandidateOffsets width packed).card := by
    apply Finset.card_image_iff.mpr
    intro left _ right _ heq
    exact Nat.add_left_cancel heq
  have hcard := Finset.card_le_card hsubset
  calc
    Nat.primeCounting (start + width - 1) =
        (Nat.primesLE (start + width - 1)).card := by simp
    _ ≤ (Nat.primesLE (start - 1) ∪ candidates).card := hcard
    _ ≤ (Nat.primesLE (start - 1)).card + candidates.card :=
      Finset.card_union_le _ _
    _ = Nat.primeCounting (start - 1) +
        (packedCompositeCandidateOffsets width packed).card := by
      rw [Nat.primesLE_card_eq_primeCounting, hcandidates]
    _ = Nat.primeCounting (start - 1) + candidateCount := by
      rw [certificate.candidate_card_eq]

/-- Reuse one checked packed interval at a finer window boundary.  This is the
key bridge between a producer-friendly 30,030-wide packed shard and the
roughly 4,000-wide envelope rows needed by the tight paper constants.  The
factor witnesses are checked only once by the parent certificate; a generated
window row supplies only its closed candidate-cardinality computation. -/
theorem PackedCompositeIntervalCertificate.primeCounting_window_endpoint_le
    {start width candidateCount offset windowWidth windowCandidateCount : Nat}
    {packed : Array Nat}
    (certificate :
      PackedCompositeIntervalCertificate
        start width candidateCount packed)
    (hwindow : offset + windowWidth ≤ width)
    (hwidth : 0 < windowWidth)
    (hcard :
      (packedCompositeCandidateWindowOffsets
        offset windowWidth packed).card = windowCandidateCount) :
    Nat.primeCounting (start + offset + windowWidth - 1) ≤
      Nat.primeCounting (start + offset - 1) + windowCandidateCount := by
  let candidates :=
    (packedCompositeCandidateWindowOffsets
      offset windowWidth packed).image
        (fun windowOffset => start + offset + windowOffset)
  have hsubset :
      Nat.primesLE (start + offset + windowWidth - 1) ⊆
        Nat.primesLE (start + offset - 1) ∪ candidates := by
    intro p hp
    have hpData := Nat.mem_primesLE.mp hp
    by_cases hpStart : p < start + offset
    · exact Finset.mem_union.mpr <| Or.inl <|
        Nat.mem_primesLE.mpr ⟨by omega, hpData.2⟩
    · apply Finset.mem_union.mpr
      apply Or.inr
      apply Finset.mem_image.mpr
      refine ⟨p - (start + offset), ?_, by omega⟩
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_range.mpr (by omega), ?_⟩
      have hzero :=
        certificate.factor_zero_of_prime
          (n := p) (by omega) (by omega) hpData.2
      have hindex :
          offset + (p - (start + offset)) = p - start := by
        omega
      rw [hindex]
      exact hzero
  have hcandidates :
      candidates.card =
        (packedCompositeCandidateWindowOffsets
          offset windowWidth packed).card := by
    apply Finset.card_image_iff.mpr
    intro left _ right _ heq
    have houter :
        offset + left = offset + right :=
      Nat.add_left_cancel (by
        simpa only [Nat.add_assoc] using heq)
    exact Nat.add_left_cancel houter
  have hcardBound := Finset.card_le_card hsubset
  calc
    Nat.primeCounting (start + offset + windowWidth - 1) =
        (Nat.primesLE (start + offset + windowWidth - 1)).card := by simp
    _ ≤ (Nat.primesLE (start + offset - 1) ∪ candidates).card :=
      hcardBound
    _ ≤ (Nat.primesLE (start + offset - 1)).card + candidates.card :=
      Finset.card_union_le _ _
    _ = Nat.primeCounting (start + offset - 1) +
        (packedCompositeCandidateWindowOffsets
          offset windowWidth packed).card := by
      rw [Nat.primesLE_card_eq_primeCounting, hcandidates]
    _ = Nat.primeCounting (start + offset - 1) +
        windowCandidateCount := by rw [hcard]

#print axioms
  PackedCompositeIntervalCertificate.primeCounting_endpoint_le
#print axioms
  PackedCompositeIntervalCertificate.primeCounting_window_endpoint_le
#print axioms
  PackedCompositeWindowCertificate.primeCounting_endpoint_le
#print axioms
  PackedCompositeSingleWordCertificate.primeCounting_endpoint_le

/-!
# Wheel-compressed packed prime-count witnesses

The slope certificates use intervals of width `30030 = 2*3*5*7*11*13`.
Every prime in those high intervals is coprime to `30030`, so a producer only
needs factor codes at the 5,760 coprime offsets.  The shared offset table is
itself packed in 128-offset words and certified once.  This avoids both the
former 30,030 factor rows per period and repeated linear indexing into a
5,760-entry literal list.
-/

def packedWheelOffsetCode
    (packedOffsets : Array Nat) (index : Nat) : Nat :=
  let packedWord := (packedOffsets[index / 64]?).getD 0
  (packedWord / 32768 ^ (index % 64)) % 32768

def packedWheelOffsetList
    (offsetCount : Nat) (packedOffsets : Array Nat) : List Nat :=
  List.ofFn fun index : Fin offsetCount =>
    packedWheelOffsetCode packedOffsets index

def coprimeWheelOffsetList (periodWidth : Nat) : List Nat :=
  (List.range periodWidth).filter fun offset =>
    offset.Coprime periodWidth

def packedWheelCompositeWordPasses
    (period periodWidth : Nat) (packedOffsets : Array Nat)
    (index width packedWord : Nat) : Bool :=
  allNatRange
    (fun localIndex =>
      let value :=
        period * periodWidth +
          packedWheelOffsetCode packedOffsets (index + localIndex)
      let factor :=
        packedCompositeSingleWordFactorCode packedWord localIndex
      decide (
        factor = 0 ∨
          (2 ≤ factor ∧ factor < value ∧ factor ∣ value)))
    0 width

def packedWheelCompositeWordCandidateIndices
    (width packedWord : Nat) : Finset Nat :=
  (Finset.range width).filter fun localIndex =>
    packedCompositeSingleWordFactorCode packedWord localIndex = 0

structure PackedWheelOffsetsCertificate
    (periodWidth offsetCount : Nat) (packedOffsets : Array Nat) where
  checked :
    packedWheelOffsetList offsetCount packedOffsets =
      coprimeWheelOffsetList periodWidth

theorem PackedWheelOffsetsCertificate.index_of_coprime
    {periodWidth offsetCount offset : Nat}
    {packedOffsets : Array Nat}
    (certificate :
      PackedWheelOffsetsCertificate
        periodWidth offsetCount packedOffsets)
    (hoffset : offset < periodWidth)
    (hcoprime : offset.Coprime periodWidth) :
    ∃ index < offsetCount,
      packedWheelOffsetCode packedOffsets index = offset := by
  have hoffsetMem :
      offset ∈ coprimeWheelOffsetList periodWidth := by
    exact List.mem_filter.mpr
      ⟨List.mem_range.mpr hoffset, decide_eq_true_eq.mpr hcoprime⟩
  rw [← certificate.checked] at hoffsetMem
  have hrange :
      offset ∈ Set.range
        (fun index : Fin offsetCount =>
          packedWheelOffsetCode packedOffsets index) := by
    exact
      (List.mem_ofFn'
        (fun index : Fin offsetCount =>
          packedWheelOffsetCode packedOffsets index)
        offset).mp hoffsetMem
  obtain ⟨index, hvalue⟩ := hrange
  exact ⟨index, index.isLt, hvalue⟩

structure PackedWheelCompositeWordCertificate
    (period periodWidth : Nat) (packedOffsets : Array Nat)
    (index width candidateCount packedWord : Nat) where
  checked :
    packedWheelCompositeWordPasses
      period periodWidth packedOffsets index width packedWord = true
  candidate_card_eq :
    (packedWheelCompositeWordCandidateIndices
      width packedWord).card = candidateCount

theorem PackedWheelCompositeWordCertificate.factor_zero_of_prime
    {period periodWidth index width candidateCount packedWord : Nat}
    {packedOffsets : Array Nat} {localIndex value : Nat}
    (certificate :
      PackedWheelCompositeWordCertificate
        period periodWidth packedOffsets
        index width candidateCount packedWord)
    (hlocal : localIndex < width)
    (hvalue :
      period * periodWidth +
          packedWheelOffsetCode
            packedOffsets (index + localIndex) = value)
    (hprime : Nat.Prime value) :
    packedCompositeSingleWordFactorCode
        packedWord localIndex = 0 := by
  have hrow :=
    (allNatRange_eq_true_iff _ _ _).mp certificate.checked
      localIndex (by omega) (by omega)
  have hdata :
      packedCompositeSingleWordFactorCode packedWord localIndex = 0 ∨
        (2 ≤ packedCompositeSingleWordFactorCode packedWord localIndex ∧
          packedCompositeSingleWordFactorCode packedWord localIndex <
            value ∧
          packedCompositeSingleWordFactorCode packedWord localIndex ∣
            value) := by
    have := of_decide_eq_true hrow
    simpa [hvalue] using this
  rcases hdata with hzero | ⟨hfactorTwo, hfactorLt, hfactorDvd⟩
  · exact hzero
  · rcases hprime.eq_one_or_self_of_dvd
        (packedCompositeSingleWordFactorCode
          packedWord localIndex) hfactorDvd with
      hOne | hSelf
    · omega
    · omega

/-- A balanced tree over consecutive indices in one shared wheel-offset
table.  Unlike `PackedCompositeIntervalProofTree`, tree indices are not
integer offsets; the packed table maps them to the only offsets at which a
high prime can occur. -/
inductive PackedWheelCompositePeriodProofTree
    (period periodWidth : Nat) (packedOffsets : Array Nat) :
    Nat → Nat → Nat → Type
  | word (index width candidateCount packedWord : Nat)
      (hwidth : 0 < width)
      (certificate :
        PackedWheelCompositeWordCertificate
          period periodWidth packedOffsets
          index width candidateCount packedWord) :
      PackedWheelCompositePeriodProofTree
        period periodWidth packedOffsets index width candidateCount
  | node {index leftWidth rightWidth leftCount rightCount : Nat}
      (left :
        PackedWheelCompositePeriodProofTree
          period periodWidth packedOffsets
          index leftWidth leftCount)
      (right :
        PackedWheelCompositePeriodProofTree
          period periodWidth packedOffsets
          (index + leftWidth) rightWidth rightCount) :
      PackedWheelCompositePeriodProofTree
        period periodWidth packedOffsets
        index (leftWidth + rightWidth) (leftCount + rightCount)

namespace PackedWheelCompositePeriodProofTree

def candidateNumbers
    {period periodWidth index width candidateCount : Nat}
    {packedOffsets : Array Nat}
    (tree :
      PackedWheelCompositePeriodProofTree
        period periodWidth packedOffsets
          index width candidateCount) :
    Finset Nat :=
  match tree with
  | .word index width _ packedWord _ _ =>
      (packedWheelCompositeWordCandidateIndices width packedWord).image
        (fun localIndex =>
          period * periodWidth +
            packedWheelOffsetCode
              packedOffsets (index + localIndex))
  | .node left right =>
      candidateNumbers left ∪ candidateNumbers right

theorem candidateNumbers_card_le
    {period periodWidth index width candidateCount : Nat}
    {packedOffsets : Array Nat}
    (tree :
      PackedWheelCompositePeriodProofTree
        period periodWidth packedOffsets
          index width candidateCount) :
    tree.candidateNumbers.card ≤ candidateCount := by
  induction tree with
  | word index width candidateCount packedWord _ certificate =>
      calc
        _ ≤
            (packedWheelCompositeWordCandidateIndices
              width packedWord).card :=
          Finset.card_image_le
        _ = candidateCount := certificate.candidate_card_eq
  | node left right hleft hright =>
      exact
        (Finset.card_union_le _ _).trans
          (Nat.add_le_add hleft hright)

theorem prime_mem_candidateNumbers_of_index
    {period periodWidth index width candidateCount : Nat}
    {packedOffsets : Array Nat}
    (tree :
      PackedWheelCompositePeriodProofTree
        period periodWidth packedOffsets
          index width candidateCount)
    {globalIndex value : Nat}
    (hindexLower : index ≤ globalIndex)
    (hindexUpper : globalIndex < index + width)
    (hvalue :
      period * periodWidth +
          packedWheelOffsetCode packedOffsets globalIndex = value)
    (hprime : Nat.Prime value) :
    value ∈ tree.candidateNumbers := by
  induction tree generalizing globalIndex value with
  | word index width candidateCount packedWord _ certificate =>
      apply Finset.mem_image.mpr
      refine ⟨globalIndex - index, ?_, ?_⟩
      · apply Finset.mem_filter.mpr
        refine ⟨Finset.mem_range.mpr (by omega), ?_⟩
        apply certificate.factor_zero_of_prime
          (localIndex := globalIndex - index)
          (value := value) (by omega) ?_ hprime
        simpa [show index + (globalIndex - index) = globalIndex by omega]
          using hvalue
      · simpa [show index + (globalIndex - index) = globalIndex by omega]
          using hvalue
  | @node nodeIndex leftWidth rightWidth leftCount rightCount
      left right ihLeft ihRight =>
      by_cases hleftIndex : globalIndex < nodeIndex + leftWidth
      · exact Finset.mem_union_left _
          (ihLeft hindexLower hleftIndex hvalue hprime)
      · exact Finset.mem_union_right _
          (ihRight (by omega) (by omega) hvalue hprime)

theorem primeCounting_endpoint_le_structural
    {period periodWidth offsetCount candidateCount : Nat}
    {packedOffsets : Array Nat}
    (tree :
      PackedWheelCompositePeriodProofTree
        period periodWidth packedOffsets
          0 offsetCount candidateCount)
    (offsetCertificate :
      PackedWheelOffsetsCertificate
        periodWidth offsetCount packedOffsets)
    (hperiod : 2 ≤ period)
    (hperiodWidth : 0 < periodWidth) :
    Nat.primeCounting (period * periodWidth + periodWidth - 1) ≤
      Nat.primeCounting (period * periodWidth - 1) +
        candidateCount := by
  let candidates := tree.candidateNumbers
  have hsubset :
      Nat.primesLE (period * periodWidth + periodWidth - 1) ⊆
        Nat.primesLE (period * periodWidth - 1) ∪ candidates := by
    intro p hp
    have hpData := Nat.mem_primesLE.mp hp
    by_cases hpStart : p < period * periodWidth
    · exact Finset.mem_union.mpr <| Or.inl <|
        Nat.mem_primesLE.mpr ⟨by omega, hpData.2⟩
    · apply Finset.mem_union.mpr
      apply Or.inr
      have hpLower : period * periodWidth ≤ p := Nat.le_of_not_gt hpStart
      have hpUpper : p < period * periodWidth + periodWidth := by omega
      have hpNotDvd : ¬ p ∣ periodWidth := by
        intro hpDvd
        have hpLe : p ≤ periodWidth :=
          Nat.le_of_dvd hperiodWidth hpDvd
        have htwice :
            2 * periodWidth ≤ period * periodWidth :=
          Nat.mul_le_mul_right periodWidth hperiod
        omega
      have hpCoprime : p.Coprime periodWidth :=
        hpData.2.coprime_iff_not_dvd.mpr hpNotDvd
      have hoffsetCoprime :
          (p - period * periodWidth).Coprime periodWidth := by
        apply
          (Nat.coprime_add_mul_right_left
            (p - period * periodWidth) periodWidth period).mp
        have hsum :
            p - period * periodWidth + period * periodWidth = p := by
          omega
        rwa [hsum]
      have hoffsetMem :
          ∃ globalIndex < offsetCount,
            packedWheelOffsetCode packedOffsets globalIndex =
              p - period * periodWidth :=
        offsetCertificate.index_of_coprime
          (by omega) hoffsetCoprime
      obtain ⟨globalIndex, hglobalUpper, hget⟩ :=
        hoffsetMem
      have hvalue :
          period * periodWidth +
              packedWheelOffsetCode packedOffsets globalIndex = p := by
        rw [hget]
        omega
      exact tree.prime_mem_candidateNumbers_of_index
        (globalIndex := globalIndex) (value := p)
        (by omega) (by omega) hvalue hpData.2
  have hcardBound := Finset.card_le_card hsubset
  calc
    Nat.primeCounting (period * periodWidth + periodWidth - 1) =
        (Nat.primesLE
          (period * periodWidth + periodWidth - 1)).card := by simp
    _ ≤
        (Nat.primesLE (period * periodWidth - 1) ∪
          candidates).card := hcardBound
    _ ≤
        (Nat.primesLE (period * periodWidth - 1)).card +
          candidates.card := Finset.card_union_le _ _
    _ ≤
        Nat.primeCounting (period * periodWidth - 1) +
          candidateCount := by
      rw [Nat.primesLE_card_eq_primeCounting]
      exact Nat.add_le_add_left tree.candidateNumbers_card_le _

#print axioms
  PackedWheelCompositePeriodProofTree.primeCounting_endpoint_le_structural

end PackedWheelCompositePeriodProofTree

/-- An opaque-friendly interface for one consecutive chunk of wheel indices.
The generated witness remains an ordinary kernel-checked proof tree, but only
this proposition crosses a module boundary.  Consequently later period
assembly never unfolds the large packed witness term. -/
def PackedWheelPrimeChunkProperty
    (period periodWidth : Nat) (packedOffsets : Array Nat)
    (index width candidateCount : Nat) : Prop :=
  ∃ candidates : Finset Nat,
    candidates.card ≤ candidateCount ∧
      ∀ {globalIndex value : Nat},
        index ≤ globalIndex →
        globalIndex < index + width →
        period * periodWidth +
            packedWheelOffsetCode packedOffsets globalIndex = value →
        Nat.Prime value →
        value ∈ candidates

namespace PackedWheelPrimeChunkProperty

theorem of_tree
    {period periodWidth index width candidateCount : Nat}
    {packedOffsets : Array Nat}
    (tree :
      PackedWheelCompositePeriodProofTree
        period periodWidth packedOffsets index width candidateCount) :
    PackedWheelPrimeChunkProperty
      period periodWidth packedOffsets index width candidateCount := by
  refine ⟨tree.candidateNumbers, tree.candidateNumbers_card_le, ?_⟩
  intro globalIndex value hindexLower hindexUpper hvalue hprime
  exact tree.prime_mem_candidateNumbers_of_index
    hindexLower hindexUpper hvalue hprime

theorem append
    {period periodWidth index leftWidth rightWidth leftCount rightCount : Nat}
    {packedOffsets : Array Nat}
    (left :
      PackedWheelPrimeChunkProperty
        period periodWidth packedOffsets index leftWidth leftCount)
    (right :
      PackedWheelPrimeChunkProperty
        period periodWidth packedOffsets
          (index + leftWidth) rightWidth rightCount) :
    PackedWheelPrimeChunkProperty
      period periodWidth packedOffsets
        index (leftWidth + rightWidth) (leftCount + rightCount) := by
  rcases left with ⟨leftCandidates, hleftCard, hleftCover⟩
  rcases right with ⟨rightCandidates, hrightCard, hrightCover⟩
  refine ⟨leftCandidates ∪ rightCandidates, ?_, ?_⟩
  · exact
      (Finset.card_union_le _ _).trans
        (Nat.add_le_add hleftCard hrightCard)
  · intro globalIndex value hindexLower hindexUpper hvalue hprime
    by_cases hleftIndex : globalIndex < index + leftWidth
    · exact Finset.mem_union_left _
        (hleftCover hindexLower hleftIndex hvalue hprime)
    · exact Finset.mem_union_right _
        (hrightCover (by omega) (by omega) hvalue hprime)

theorem primeCounting_endpoint_le
    {period periodWidth offsetCount candidateCount : Nat}
    {packedOffsets : Array Nat}
    (coverage :
      PackedWheelPrimeChunkProperty
        period periodWidth packedOffsets 0 offsetCount candidateCount)
    (offsetCertificate :
      PackedWheelOffsetsCertificate
        periodWidth offsetCount packedOffsets)
    (hperiod : 2 ≤ period)
    (hperiodWidth : 0 < periodWidth) :
    Nat.primeCounting (period * periodWidth + periodWidth - 1) ≤
      Nat.primeCounting (period * periodWidth - 1) +
        candidateCount := by
  rcases coverage with ⟨candidates, hcandidatesCard, hcover⟩
  have hsubset :
      Nat.primesLE (period * periodWidth + periodWidth - 1) ⊆
        Nat.primesLE (period * periodWidth - 1) ∪ candidates := by
    intro p hp
    have hpData := Nat.mem_primesLE.mp hp
    by_cases hpStart : p < period * periodWidth
    · exact Finset.mem_union.mpr <| Or.inl <|
        Nat.mem_primesLE.mpr ⟨by omega, hpData.2⟩
    · apply Finset.mem_union.mpr
      apply Or.inr
      have hpLower : period * periodWidth ≤ p := Nat.le_of_not_gt hpStart
      have hpUpper : p < period * periodWidth + periodWidth := by omega
      have hpNotDvd : ¬ p ∣ periodWidth := by
        intro hpDvd
        have hpLe : p ≤ periodWidth :=
          Nat.le_of_dvd hperiodWidth hpDvd
        have htwice :
            2 * periodWidth ≤ period * periodWidth :=
          Nat.mul_le_mul_right periodWidth hperiod
        omega
      have hpCoprime : p.Coprime periodWidth :=
        hpData.2.coprime_iff_not_dvd.mpr hpNotDvd
      have hoffsetCoprime :
          (p - period * periodWidth).Coprime periodWidth := by
        apply
          (Nat.coprime_add_mul_right_left
            (p - period * periodWidth) periodWidth period).mp
        have hsum :
            p - period * periodWidth + period * periodWidth = p := by
          omega
        rwa [hsum]
      obtain ⟨globalIndex, hglobalUpper, hget⟩ :=
        offsetCertificate.index_of_coprime
          (by omega) hoffsetCoprime
      have hvalue :
          period * periodWidth +
              packedWheelOffsetCode packedOffsets globalIndex = p := by
        rw [hget]
        omega
      exact hcover (by omega) (by omega) hvalue hpData.2
  have hcardBound := Finset.card_le_card hsubset
  calc
    Nat.primeCounting (period * periodWidth + periodWidth - 1) =
        (Nat.primesLE
          (period * periodWidth + periodWidth - 1)).card := by simp
    _ ≤
        (Nat.primesLE (period * periodWidth - 1) ∪
          candidates).card := hcardBound
    _ ≤
        (Nat.primesLE (period * periodWidth - 1)).card +
          candidates.card := Finset.card_union_le _ _
    _ ≤
        Nat.primeCounting (period * periodWidth - 1) +
          candidateCount := by
      rw [Nat.primesLE_card_eq_primeCounting]
      exact Nat.add_le_add_left hcandidatesCard _

#print axioms PackedWheelPrimeChunkProperty.primeCounting_endpoint_le

end PackedWheelPrimeChunkProperty

end Erdos848
