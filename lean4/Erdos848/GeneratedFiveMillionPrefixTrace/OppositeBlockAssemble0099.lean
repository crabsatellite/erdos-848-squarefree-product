import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeBlockPart0_0099
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeBlockPart1_0099

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem oppositeRange_0099 :
    oppositeHistoryChunk0099.ResidueIndexedValid anchorHistories 5000000 18 25 101376 := by
  have h0 := oppositePart0_0099
  simp only [oppositePartValid0_0099, oppositeHistoryChunk0099] at h0
  have h1 := oppositePart1_0099
  simp only [oppositePartValid1_0099, oppositeHistoryChunk0099] at h1
  have h2 := oppositePart2_0099
  simp only [oppositePartValid2_0099, oppositeHistoryChunk0099] at h2
  have h3 := oppositePart3_0099
  simp only [oppositePartValid3_0099, oppositeHistoryChunk0099] at h3
  have h4 := oppositePart4_0099
  simp only [oppositePartValid4_0099, oppositeHistoryChunk0099] at h4
  have h5 := oppositePart5_0099
  simp only [oppositePartValid5_0099, oppositeHistoryChunk0099] at h5
  have h6 := oppositePart6_0099
  simp only [oppositePartValid6_0099, oppositeHistoryChunk0099] at h6
  have h7 := oppositePart7_0099
  simp only [oppositePartValid7_0099, oppositeHistoryChunk0099] at h7
  unfold oppositeHistoryChunk0099
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
