import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeBlockPart0_0085
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeBlockPart1_0085

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem oppositeRange_0085 :
    oppositeHistoryChunk0085.ResidueIndexedValid anchorHistories 5000000 18 25 87040 := by
  have h0 := oppositePart0_0085
  simp only [oppositePartValid0_0085, oppositeHistoryChunk0085] at h0
  have h1 := oppositePart1_0085
  simp only [oppositePartValid1_0085, oppositeHistoryChunk0085] at h1
  have h2 := oppositePart2_0085
  simp only [oppositePartValid2_0085, oppositeHistoryChunk0085] at h2
  have h3 := oppositePart3_0085
  simp only [oppositePartValid3_0085, oppositeHistoryChunk0085] at h3
  have h4 := oppositePart4_0085
  simp only [oppositePartValid4_0085, oppositeHistoryChunk0085] at h4
  have h5 := oppositePart5_0085
  simp only [oppositePartValid5_0085, oppositeHistoryChunk0085] at h5
  have h6 := oppositePart6_0085
  simp only [oppositePartValid6_0085, oppositeHistoryChunk0085] at h6
  have h7 := oppositePart7_0085
  simp only [oppositePartValid7_0085, oppositeHistoryChunk0085] at h7
  unfold oppositeHistoryChunk0085
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
