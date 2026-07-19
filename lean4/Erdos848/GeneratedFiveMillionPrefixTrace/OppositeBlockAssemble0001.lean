import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeBlockPart0_0001
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeBlockPart1_0001

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem oppositeRange_0001 :
    oppositeHistoryChunk0001.ResidueIndexedValid anchorHistories 5000000 18 25 1024 := by
  have h0 := oppositePart0_0001
  simp only [oppositePartValid0_0001, oppositeHistoryChunk0001] at h0
  have h1 := oppositePart1_0001
  simp only [oppositePartValid1_0001, oppositeHistoryChunk0001] at h1
  have h2 := oppositePart2_0001
  simp only [oppositePartValid2_0001, oppositeHistoryChunk0001] at h2
  have h3 := oppositePart3_0001
  simp only [oppositePartValid3_0001, oppositeHistoryChunk0001] at h3
  have h4 := oppositePart4_0001
  simp only [oppositePartValid4_0001, oppositeHistoryChunk0001] at h4
  have h5 := oppositePart5_0001
  simp only [oppositePartValid5_0001, oppositeHistoryChunk0001] at h5
  have h6 := oppositePart6_0001
  simp only [oppositePartValid6_0001, oppositeHistoryChunk0001] at h6
  have h7 := oppositePart7_0001
  simp only [oppositePartValid7_0001, oppositeHistoryChunk0001] at h7
  unfold oppositeHistoryChunk0001
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
