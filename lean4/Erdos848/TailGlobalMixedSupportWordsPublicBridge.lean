import Erdos848.TailGlobalMixedSupportWordsSound
import Erdos848.TailGlobalMixedSupportWordDefs

namespace Erdos848

/-!
The word-level part of `TailGlobalMixedCoreBridge`, isolated from the affine
budget checker.  This keeps support-word semantics independent of the large
prime-interval and diagonal certificate graph.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem globalMixedCoreIntersectWords_eq_public
    (left right : List ℕ) :
    globalMixedCoreIntersectWords left right =
      globalMixedIntersectWords left right := by
  induction left generalizing right with
  | nil => simp [globalMixedCoreIntersectWords, globalMixedIntersectWords]
  | cons left lefts ih =>
      cases right with
      | nil => simp [globalMixedCoreIntersectWords, globalMixedIntersectWords]
      | cons right rights =>
          simp [globalMixedCoreIntersectWords, globalMixedIntersectWords, ih]

theorem globalMixedCoreNormalSupportWords_eq_public
    (support : List ℕ) (squareCoset : Bool) :
    globalMixedCoreSupportWords
        GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords support
        (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords squareCoset) =
      globalMixedNormalSupportWords support squareCoset := by
  induction support with
  | nil => rfl
  | cons p support ih =>
      simp only [globalMixedCoreSupportWords,
        globalMixedNormalSupportWords]
      rw [globalMixedCoreIntersectWords_eq_public, ih]

theorem globalMixedCoreTwistSupportWords_eq_public
    (support : List ℕ) (squareCoset : Bool) :
    globalMixedCoreSupportWords
        GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords support
        (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords squareCoset) =
      globalMixedTwistSupportWords support squareCoset := by
  induction support with
  | nil => rfl
  | cons p support ih =>
      simp only [globalMixedCoreSupportWords,
        globalMixedTwistSupportWords]
      rw [globalMixedCoreIntersectWords_eq_public, ih]

#print axioms globalMixedCoreNormalSupportWords_eq_public
#print axioms globalMixedCoreTwistSupportWords_eq_public

end Erdos848
