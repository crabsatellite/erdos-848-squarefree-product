import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeBlockPart0_0144
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeBlockPart1_0144

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem oppositeRange_0144 :
    oppositeHistoryChunk0144.ResidueIndexedValid anchorHistories 5000000 18 25 147456 := by
  have h0 := oppositePart0_0144
  simp only [oppositePartValid0_0144, oppositeHistoryChunk0144] at h0
  have h1 := oppositePart1_0144
  simp only [oppositePartValid1_0144, oppositeHistoryChunk0144] at h1
  have h2 := oppositePart2_0144
  simp only [oppositePartValid2_0144, oppositeHistoryChunk0144] at h2
  have h3 := oppositePart3_0144
  simp only [oppositePartValid3_0144, oppositeHistoryChunk0144] at h3
  have h4 := oppositePart4_0144
  simp only [oppositePartValid4_0144, oppositeHistoryChunk0144] at h4
  have h5 := oppositePart5_0144
  simp only [oppositePartValid5_0144, oppositeHistoryChunk0144] at h5
  have h6 := oppositePart6_0144
  simp only [oppositePartValid6_0144, oppositeHistoryChunk0144] at h6
  have h7 := oppositePart7_0144
  simp only [oppositePartValid7_0144, oppositeHistoryChunk0144] at h7
  unfold oppositeHistoryChunk0144
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
