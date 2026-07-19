import Erdos848.ScratchE3Semantic

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def scratchE3Subsets1 : Finset (Finset E3FinitePrimeIndex) :=
  {{0}, {1}, {2}, {3}, {4}, {5}}

theorem scratchE3_powersetCard_1 :
    (Finset.univ : Finset E3FinitePrimeIndex).powersetCard 1 =
      scratchE3Subsets1 := by
  decide

def scratchE3Subsets2 : Finset (Finset E3FinitePrimeIndex) :=
  {{0, 1}, {0, 2}, {0, 3}, {0, 4}, {0, 5},
    {1, 2}, {1, 3}, {1, 4}, {1, 5},
    {2, 3}, {2, 4}, {2, 5}, {3, 4}, {3, 5}, {4, 5}}

theorem scratchE3_powersetCard_2 :
    (Finset.univ : Finset E3FinitePrimeIndex).powersetCard 2 =
      scratchE3Subsets2 := by
  decide

def scratchE3Subsets3 : Finset (Finset E3FinitePrimeIndex) :=
  {{0, 1, 2}, {0, 1, 3}, {0, 1, 4}, {0, 1, 5},
    {0, 2, 3}, {0, 2, 4}, {0, 2, 5}, {0, 3, 4},
    {0, 3, 5}, {0, 4, 5}, {1, 2, 3}, {1, 2, 4},
    {1, 2, 5}, {1, 3, 4}, {1, 3, 5}, {1, 4, 5},
    {2, 3, 4}, {2, 3, 5}, {2, 4, 5}, {3, 4, 5}}

theorem scratchE3_powersetCard_3 :
    (Finset.univ : Finset E3FinitePrimeIndex).powersetCard 3 =
      scratchE3Subsets3 := by
  decide

def scratchE3Subsets4 : Finset (Finset E3FinitePrimeIndex) :=
  {{0, 1, 2, 3}, {0, 1, 2, 4}, {0, 1, 2, 5},
    {0, 1, 3, 4}, {0, 1, 3, 5}, {0, 1, 4, 5},
    {0, 2, 3, 4}, {0, 2, 3, 5}, {0, 2, 4, 5},
    {0, 3, 4, 5}, {1, 2, 3, 4}, {1, 2, 3, 5},
    {1, 2, 4, 5}, {1, 3, 4, 5}, {2, 3, 4, 5}}

theorem scratchE3_powersetCard_4 :
    (Finset.univ : Finset E3FinitePrimeIndex).powersetCard 4 =
      scratchE3Subsets4 := by
  decide

theorem scratchE3RankDensity_eq_numerator
    (roots : E3FinitePrimeIndex -> Finset Nat) (rank : Nat)
    (hrank : 1 <= rank) (hrankUpper : rank <= 4) :
    scratchRankDensity (Finset.univ : Finset E3FinitePrimeIndex)
        e3FiniteModulus roots rank =
      (scratchE3RankNumerator (fun i => (roots i).card) rank : Rat) /
        scratchE3FullModulus := by
  interval_cases rank <;> unfold scratchRankDensity
  · rw [scratchE3_powersetCard_1]
    simp (disch := decide) [scratchE3Subsets1, scratchRootDensity,
      scratchE3RankNumerator, scratchE3FullModulus, e3FiniteModulus]
    ring
  · rw [scratchE3_powersetCard_2]
    simp (disch := decide) [scratchE3Subsets2, scratchRootDensity,
      scratchE3RankNumerator, scratchE3FullModulus, e3FiniteModulus]
    ring
  · rw [scratchE3_powersetCard_3]
    simp (disch := decide) [scratchE3Subsets3, scratchRootDensity,
      scratchE3RankNumerator, scratchE3FullModulus, e3FiniteModulus]
    ring
  · rw [scratchE3_powersetCard_4]
    simp (disch := decide) [scratchE3Subsets4, scratchRootDensity,
      scratchE3RankNumerator, scratchE3FullModulus, e3FiniteModulus]
    ring

theorem scratchE3RankEndpoint_eq
    (roots : E3FinitePrimeIndex -> Finset Nat) (rank : Nat)
    (hrank : 1 <= rank) (hrankUpper : rank <= 4) :
    scratchRankEndpoint (Finset.univ : Finset E3FinitePrimeIndex)
        roots rank =
      (scratchE3RankEndpoint (fun i => (roots i).card) rank : Rat) := by
  interval_cases rank <;> unfold scratchRankEndpoint
  · rw [scratchE3_powersetCard_1]
    simp (disch := decide) [scratchE3Subsets1, scratchRootEndpoint,
      scratchE3RankEndpoint]
    ring
  · rw [scratchE3_powersetCard_2]
    simp (disch := decide) [scratchE3Subsets2, scratchRootEndpoint,
      scratchE3RankEndpoint]
    ring
  · rw [scratchE3_powersetCard_3]
    simp (disch := decide) [scratchE3Subsets3, scratchRootEndpoint,
      scratchE3RankEndpoint]
    ring
  · rw [scratchE3_powersetCard_4]
    simp (disch := decide) [scratchE3Subsets4, scratchRootEndpoint,
      scratchE3RankEndpoint]
    ring

noncomputable def scratchE3ThresholdDensityRat
    (p1 p2 p3 p4 p5 : ScratchE3RootPattern) : Rat :=
  (scratchE3ThresholdNumerator p1 p2 p3 p4 p5 : Rat) /
    scratchE3FullModulus

def scratchE3ThresholdEndpointRat
    (p1 p2 p3 p4 p5 : ScratchE3RootPattern) : Rat :=
  scratchE3ThresholdEndpoint p1 p2 p3 p4 p5

theorem scratchE3FiveMillionPaymentRat_le
    (p1 p2 p3 p4 p5 : ScratchE3RootPattern) :
    2 * scratchE3ThresholdDensityRat p1 p2 p3 p4 p5 / 25 +
        2 * (scratchE3ThresholdDensityRat p1 p2 p3 p4 p5 +
          scratchE3ThresholdEndpointRat p1 p2 p3 p4 p5) / 5_000_000 <=
      1221 / 100000 := by
  have h := scratchE3PaymentCrossInequality_all p1 p2 p3 p4 p5
  unfold scratchE3PaymentCrossInequality at h
  unfold scratchE3ThresholdDensityRat scratchE3ThresholdEndpointRat
  have hq :
      (100000 : Rat) *
          (2 * (scratchE3ThresholdNumerator p1 p2 p3 p4 p5 : Rat) * 5_000_000 +
            2 * 25 * ((scratchE3ThresholdNumerator p1 p2 p3 p4 p5 : Rat) +
              scratchE3ThresholdEndpoint p1 p2 p3 p4 p5 *
                scratchE3FullModulus)) <=
        1221 * scratchE3FullModulus * 25 * 5_000_000 := by
    exact_mod_cast h
  norm_num [scratchE3FullModulus] at hq ⊢
  linarith

#print axioms scratchE3RankDensity_eq_numerator
#print axioms scratchE3RankEndpoint_eq
#print axioms scratchE3FiveMillionPaymentRat_le

end Erdos848
