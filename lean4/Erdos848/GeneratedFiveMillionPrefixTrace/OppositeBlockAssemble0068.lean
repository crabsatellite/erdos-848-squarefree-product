import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeBlockPart0_0068
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeBlockPart1_0068

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem oppositeRange_0068 :
    oppositeHistoryChunk0068.ResidueIndexedValid anchorHistories 5000000 18 25 69632 := by
  have h0 := oppositePart0_0068
  simp only [oppositePartValid0_0068, oppositeHistoryChunk0068] at h0
  have h1 := oppositePart1_0068
  simp only [oppositePartValid1_0068, oppositeHistoryChunk0068] at h1
  have h2 := oppositePart2_0068
  simp only [oppositePartValid2_0068, oppositeHistoryChunk0068] at h2
  have h3 := oppositePart3_0068
  simp only [oppositePartValid3_0068, oppositeHistoryChunk0068] at h3
  have h4 := oppositePart4_0068
  simp only [oppositePartValid4_0068, oppositeHistoryChunk0068] at h4
  have h5 := oppositePart5_0068
  simp only [oppositePartValid5_0068, oppositeHistoryChunk0068] at h5
  have h6 := oppositePart6_0068
  simp only [oppositePartValid6_0068, oppositeHistoryChunk0068] at h6
  have h7 := oppositePart7_0068
  simp only [oppositePartValid7_0068, oppositeHistoryChunk0068] at h7
  unfold oppositeHistoryChunk0068
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
