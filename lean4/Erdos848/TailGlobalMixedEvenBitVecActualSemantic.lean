import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.TailGlobalMixedSupportWordsPublicBridge

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem globalMixedBitVecNormalSupportWords_eq_map
    (support : List Nat) (squareCoset : Bool) :
    globalMixedBitVecSupportWords
        GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords support
        (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords squareCoset) =
      (globalMixedNormalSupportWords support squareCoset).map
        (BitVec.ofNat 64) := by
  rw [globalMixedBitVecSupportWords_eq_map_core,
    globalMixedCoreNormalSupportWords_eq_public]

theorem globalMixedBitVecTwistSupportWords_eq_map
    (support : List Nat) (squareCoset : Bool) :
    globalMixedBitVecSupportWords
        GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords support
        (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords squareCoset) =
      (globalMixedTwistSupportWords support squareCoset).map
        (BitVec.ofNat 64) := by
  rw [globalMixedBitVecSupportWords_eq_map_core,
    globalMixedCoreTwistSupportWords_eq_public]

theorem globalMixedNormalTwoCoreCount_eq_bitVecRows
    (support : List Nat) (squareCoset : Bool) :
    globalMixedCoreEvenRestrictedCount
        (globalMixedNormalSupportWords support squareCoset)
        (GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords .two) =
      (globalMixedBitVecCount
        ((globalMixedBitVecRestrictedRows
          GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
          GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords support).normalTwoWords
            squareCoset)).toNat := by
  rw [globalMixedCoreEvenRestrictedCount_eq_bitVec_toNat]
  · cases squareCoset <;>
      simp [globalMixedBitVecRestrictedCount,
        GlobalMixedEvenBitVecRows.normalTwoWords,
        globalMixedBitVecRestrictedRows,
        globalMixedBitVecNormalSupportWords_eq_map]
  · decide
  · decide

theorem globalMixedTwistTwoCoreCount_eq_bitVecRows
    (support : List Nat) (squareCoset : Bool) :
    globalMixedCoreEvenRestrictedCount
        (globalMixedTwistSupportWords support squareCoset)
        (GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords .two) =
      (globalMixedBitVecCount
        ((globalMixedBitVecRestrictedRows
          GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
          GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords support).twistTwoWords
            squareCoset)).toNat := by
  rw [globalMixedCoreEvenRestrictedCount_eq_bitVec_toNat]
  · cases squareCoset <;>
      simp [globalMixedBitVecRestrictedCount,
        GlobalMixedEvenBitVecRows.twistTwoWords,
        globalMixedBitVecRestrictedRows,
        globalMixedBitVecTwistSupportWords_eq_map]
  · decide
  · decide

theorem globalMixedNormalThreeCoreCount_eq_bitVecRows
    (support : List Nat) (squareCoset : Bool) :
    globalMixedCoreEvenRestrictedCount
        (globalMixedNormalSupportWords support squareCoset)
        (GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords .three) =
      (globalMixedBitVecCount
        ((globalMixedBitVecRestrictedRows
          GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
          GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords support).normalThreeWords
            squareCoset)).toNat := by
  rw [globalMixedCoreEvenRestrictedCount_eq_bitVec_toNat]
  · cases squareCoset <;>
      simp [globalMixedBitVecRestrictedCount,
        GlobalMixedEvenBitVecRows.normalThreeWords,
        globalMixedBitVecRestrictedRows,
        globalMixedBitVecNormalSupportWords_eq_map]
  · decide
  · decide

theorem globalMixedTwistThreeCoreCount_eq_bitVecRows
    (support : List Nat) (squareCoset : Bool) :
    globalMixedCoreEvenRestrictedCount
        (globalMixedTwistSupportWords support squareCoset)
        (GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords .three) =
      (globalMixedBitVecCount
        ((globalMixedBitVecRestrictedRows
          GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
          GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords support).twistThreeWords
            squareCoset)).toNat := by
  rw [globalMixedCoreEvenRestrictedCount_eq_bitVec_toNat]
  · cases squareCoset <;>
      simp [globalMixedBitVecRestrictedCount,
        GlobalMixedEvenBitVecRows.twistThreeWords,
        globalMixedBitVecRestrictedRows,
        globalMixedBitVecTwistSupportWords_eq_map]
  · decide
  · decide

#print axioms globalMixedNormalTwoCoreCount_eq_bitVecRows
#print axioms globalMixedTwistThreeCoreCount_eq_bitVecRows

end Erdos848
