import Erdos848.TailHighQrRootCount
import Erdos848.TailHighVariableClassRootCertificate

namespace Erdos848

/-!
# Coset-paired, valuation-sensitive actual QR rows

Each numerical screen is supplied for both nonzero square cosets modulo five.
The pair alignment fields are mere equalities between finite row data.  The
semantic theorem then chooses the coset forced by the literal base constant
and applies the exact root factor for the pivot valuation class.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

structure CertifiedHighQrScreenPair where
  square : CertifiedHighQrScreenRow
  nonsquare : CertifiedHighQrScreenRow
  forcingAligned :
    nonsquare.row.forcing = square.row.forcing
  splitAligned : nonsquare.row.split = square.row.split
  MAligned : nonsquare.row.M = square.row.M
  targetAligned : nonsquare.row.target = square.row.target
  squareCoset : square.row.squareCoset = true
  nonsquareCoset : nonsquare.row.squareCoset = false

def CertifiedHighQrScreenPair.get
    (pair : CertifiedHighQrScreenPair) (squareCoset : Bool) :
    CertifiedHighQrScreenRow :=
  if squareCoset then pair.square else pair.nonsquare

theorem CertifiedHighQrScreenPair.get_squareCoset
    (pair : CertifiedHighQrScreenPair) (squareCoset : Bool) :
    (pair.get squareCoset).row.squareCoset = squareCoset := by
  cases squareCoset <;>
    simp [CertifiedHighQrScreenPair.get,
      pair.squareCoset, pair.nonsquareCoset]

theorem CertifiedHighQrScreenPair.get_forcing
    (pair : CertifiedHighQrScreenPair) (squareCoset : Bool) :
    (pair.get squareCoset).row.forcing =
      pair.square.row.forcing := by
  cases squareCoset <;>
    simp [CertifiedHighQrScreenPair.get, pair.forcingAligned]

theorem CertifiedHighQrScreenPair.get_M
    (pair : CertifiedHighQrScreenPair) (squareCoset : Bool) :
    (pair.get squareCoset).row.M = pair.square.row.M := by
  cases squareCoset <;>
    simp [CertifiedHighQrScreenPair.get, pair.MAligned]

theorem CertifiedHighQrScreenPair.get_split
    (pair : CertifiedHighQrScreenPair) (squareCoset : Bool) :
    (pair.get squareCoset).row.split =
      pair.square.row.split := by
  cases squareCoset <;>
    simp [CertifiedHighQrScreenPair.get, pair.splitAligned]

theorem CertifiedHighQrScreenPair.get_target
    (pair : CertifiedHighQrScreenPair) (squareCoset : Bool) :
    (pair.get squareCoset).row.target =
      pair.square.row.target := by
  cases squareCoset <;>
    simp [CertifiedHighQrScreenPair.get, pair.targetAligned]

private theorem actualHighQrHighResidue_card_cast_le_of_rootFactor
    (pair : CertifiedHighQrScreenPair)
    {N : Nat} {B : Finset Nat}
    {pivot baseResidue rootFactor : Nat}
    (hYFive : 5 < N / pair.square.row.split)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hSupportLength :
      (fiveMillionPivotSupport pivot).length =
        pair.square.row.forcing.supportLength)
    (hSupportProduct :
      (fiveMillionPivotSupport pivot).prod <
        pair.square.row.forcing.stop)
    (hNormalRoots :
      ∀ m,
        ¬5 ∣ pivot * baseResidue + 1 →
        (transformedRootResidues m (25 * pivot)
          (pivot * baseResidue + 1)).card ≤
            rootFactor *
              2 ^ ((fiveMillionPivotSupport pivot).length + 1))
    (hTwistRoots :
      ∀ m,
        5 ∣ pivot * baseResidue + 1 →
        ¬25 ∣ pivot * baseResidue + 1 →
        (transformedRootResidues m (5 * pivot)
          ((pivot * baseResidue + 1) / 5)).card ≤
            rootFactor *
              2 ^ ((fiveMillionPivotSupport pivot).length + 1)) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / pair.square.row.split) baseResidue).card : Rat) ≤
      highQrRootHighCoefficient rootFactor
        (fiveMillionPivotSupport pivot).length
        pair.square.row.target pair.square.row.split N := by
  classical
  by_cases hempty :
      twoBaseHighTailSquarePointsAtResidue
        N pivot (N / pair.square.row.split) baseResidue = ∅
  · rw [hempty]
    simp [highQrRootHighCoefficient]
    positivity
  · obtain ⟨point, hpoint⟩ :=
      Finset.nonempty_iff_ne_empty.mpr hempty
    have hpointParts := Finset.mem_filter.mp hpoint
    have hpointLow : point ∈ lowBaseSet N :=
      (Finset.mem_filter.mp hpointParts.1).1
    have hpointResidue : point % 25 = baseResidue :=
      hpointParts.2
    have hconstantTwentyFive :
        ¬25 ∣ pivot * baseResidue + 1 :=
      fiveMillionBaseConstant_not_twentyFive_dvd
        hBout hpivotResidual hpointLow hpointResidue
    by_cases hconstantFive : 5 ∣ pivot * baseResidue + 1
    · have hquotientFive :
          ¬5 ∣ (pivot * baseResidue + 1) / 5 :=
        not_five_dvd_div_five_of_not_twentyFive
          hconstantFive hconstantTwentyFive
      obtain ⟨squareCoset, hcoset⟩ :=
        exists_modFiveCosetAccepts_of_not_dvd hquotientFive
      let certificate := pair.get squareCoset
      have hcertificateCoset :
          certificate.row.squareCoset = squareCoset :=
        pair.get_squareCoset squareCoset
      have hforcing :
          certificate.row.forcing =
            pair.square.row.forcing :=
        pair.get_forcing squareCoset
      have htarget :
          certificate.row.target =
            pair.square.row.target :=
        pair.get_target squareCoset
      have hsplit :
          certificate.row.split =
            pair.square.row.split :=
        pair.get_split squareCoset
      have hbound :=
        actualHighQrFiveTwistHighResidue_card_cast_le
          certificate (by simpa [hsplit] using hYFive)
          hBout hpivotResidual
          hconstantFive hconstantTwentyFive
          (by simpa [hcertificateCoset] using hcoset)
          (by simpa [hforcing] using hSupportLength)
          (by simpa [hforcing] using hSupportProduct)
          (fun m => hTwistRoots m hconstantFive
            hconstantTwentyFive)
      simpa [htarget, hsplit] using hbound
    · obtain ⟨squareCoset, hcoset⟩ :=
        exists_modFiveCosetAccepts_of_not_dvd hconstantFive
      let certificate := pair.get squareCoset
      have hcertificateCoset :
          certificate.row.squareCoset = squareCoset :=
        pair.get_squareCoset squareCoset
      have hforcing :
          certificate.row.forcing =
            pair.square.row.forcing :=
        pair.get_forcing squareCoset
      have htarget :
          certificate.row.target =
            pair.square.row.target :=
        pair.get_target squareCoset
      have hsplit :
          certificate.row.split =
            pair.square.row.split :=
        pair.get_split squareCoset
      have hbound :=
        actualHighQrNormalHighResidue_card_cast_le
          certificate (by simpa [hsplit] using hYFive)
          hBout hpivotResidual
          hconstantFive
          (by simpa [hcertificateCoset] using hcoset)
          (by simpa [hforcing] using hSupportLength)
          (by simpa [hforcing] using hSupportProduct)
          (fun m => hNormalRoots m hconstantFive)
      simpa [htarget, hsplit] using hbound

theorem actualHighQrHighPoints_card_cast_le
    (pair : CertifiedHighQrScreenPair)
    (rootClass : HighVariableRootClass)
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    {valuation : FiveMillionValuationClass}
    (hYFive : 5 < N / pair.square.row.split)
    (hBout : Erdos848OutsideSet N B)
    (hpivotPart :
      pivot ∈ fiveMillionValuationPart N B valuation)
    (hAccept : rootClass.Accepts valuation)
    (hSupportLength :
      (fiveMillionPivotSupport pivot).length =
        pair.square.row.forcing.supportLength)
    (hSupportProduct :
      (fiveMillionPivotSupport pivot).prod <
        pair.square.row.forcing.stop) :
    ((twoBaseHighTailSquarePoints
        N pivot (N / pair.square.row.split)).card : Rat) ≤
      2 * highQrRootHighCoefficient rootClass.factor
        (fiveMillionPivotSupport pivot).length
        pair.square.row.target pair.square.row.split N := by
  have hpivotResidual :=
    fiveMillionValuationPart_subset_residual
      N B valuation hpivotPart
  have hcard :
      (twoBaseHighTailSquarePoints
          N pivot (N / pair.square.row.split)).card ≤
        (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / pair.square.row.split) 7).card +
        (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / pair.square.row.split) 18).card := by
    rw [twoBaseHighTailSquarePoints_eq_residue_union]
    exact Finset.card_union_le _ _
  have hcardRat :
      ((twoBaseHighTailSquarePoints
          N pivot (N / pair.square.row.split)).card : Rat) ≤
        ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / pair.square.row.split) 7).card : Rat) +
        ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / pair.square.row.split) 18).card : Rat) := by
    exact_mod_cast hcard
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hroot :
      ∀ baseResidue,
        ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / pair.square.row.split) baseResidue).card : Rat) ≤
        highQrRootHighCoefficient rootClass.factor
          (fiveMillionPivotSupport pivot).length
          pair.square.row.target pair.square.row.split N := by
    intro baseResidue
    apply actualHighQrHighResidue_card_cast_le_of_rootFactor
      pair hYFive hBout hpivotResidual
      hSupportLength hSupportProduct
    · intro m hconstantFive
      cases valuation with
      | evenOne =>
          have hclass : rootClass = .evenOne := hAccept
          subst rootClass
          simpa [HighVariableRootClass.factor] using
            (globalMixedNormalTransformedRoot_card_le_evenOne
              (m := m) hpivotPos
              (fiveMillionValuationPart_evenOne hpivotPart)
              hconstantFive)
      | evenTwo =>
          have hclass : rootClass = .evenTwo := hAccept
          subst rootClass
          simpa [HighVariableRootClass.factor] using
            (globalMixedNormalTransformedRoot_card_le_evenTwo
              (m := m) hpivotPos
              (fiveMillionValuationPart_evenTwo hpivotPart)
              hconstantFive)
      | evenThree =>
          have hclass : rootClass = .evenThree := hAccept
          subst rootClass
          simpa [HighVariableRootClass.factor] using
            (globalMixedNormalTransformedRoot_card_le_anyParity
              (m := m) hpivotPos hconstantFive)
      | oddOne =>
          have hclass : rootClass = .odd := hAccept
          subst rootClass
          simpa [HighVariableRootClass.factor] using
            (fiveMillionNormalTransformedRoot_card_le
              (m := m) hpivotPos
              (fiveMillionValuationPart_odd
                (Or.inl rfl) hpivotPart)
              hconstantFive)
      | oddThree =>
          have hclass : rootClass = .odd := hAccept
          subst rootClass
          simpa [HighVariableRootClass.factor] using
            (fiveMillionNormalTransformedRoot_card_le
              (m := m) hpivotPos
              (fiveMillionValuationPart_odd
                (Or.inr rfl) hpivotPart)
              hconstantFive)
    · intro m hconstantFive hconstantTwentyFive
      cases valuation with
      | evenOne =>
          have hclass : rootClass = .evenOne := hAccept
          subst rootClass
          simpa [HighVariableRootClass.factor] using
            (globalMixedFiveTwistTransformedRoot_card_le_evenOne
              (m := m) hpivotPos
              (fiveMillionValuationPart_evenOne hpivotPart)
              hconstantFive hconstantTwentyFive)
      | evenTwo =>
          have hclass : rootClass = .evenTwo := hAccept
          subst rootClass
          simpa [HighVariableRootClass.factor] using
            (globalMixedFiveTwistTransformedRoot_card_le_evenTwo
              (m := m) hpivotPos
              (fiveMillionValuationPart_evenTwo hpivotPart)
              hconstantFive hconstantTwentyFive)
      | evenThree =>
          have hclass : rootClass = .evenThree := hAccept
          subst rootClass
          simpa [HighVariableRootClass.factor] using
            (globalMixedFiveTwistTransformedRoot_card_le_anyParity
              (m := m) hpivotPos hconstantFive
              hconstantTwentyFive)
      | oddOne =>
          have hclass : rootClass = .odd := hAccept
          subst rootClass
          simpa [HighVariableRootClass.factor] using
            (fiveMillionFiveTwistTransformedRoot_card_le
              (m := m) hpivotPos
              (fiveMillionValuationPart_odd
                (Or.inl rfl) hpivotPart)
              hconstantFive hconstantTwentyFive)
      | oddThree =>
          have hclass : rootClass = .odd := hAccept
          subst rootClass
          simpa [HighVariableRootClass.factor] using
            (fiveMillionFiveTwistTransformedRoot_card_le
              (m := m) hpivotPos
              (fiveMillionValuationPart_odd
                (Or.inr rfl) hpivotPart)
              hconstantFive hconstantTwentyFive)
  calc
    ((twoBaseHighTailSquarePoints
        N pivot (N / pair.square.row.split)).card : Rat) ≤
      ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / pair.square.row.split) 7).card : Rat) +
      ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / pair.square.row.split) 18).card : Rat) :=
      hcardRat
    _ ≤ highQrRootHighCoefficient rootClass.factor
          (fiveMillionPivotSupport pivot).length
          pair.square.row.target pair.square.row.split N +
        highQrRootHighCoefficient rootClass.factor
          (fiveMillionPivotSupport pivot).length
          pair.square.row.target pair.square.row.split N :=
      add_le_add (hroot 7) (hroot 18)
    _ = 2 * highQrRootHighCoefficient rootClass.factor
          (fiveMillionPivotSupport pivot).length
          pair.square.row.target pair.square.row.split N := by ring

#print axioms actualHighQrHighPoints_card_cast_le

end Erdos848
