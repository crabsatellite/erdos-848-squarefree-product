import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart0_0055
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart1_0055
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart2_0055
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart3_0055
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart4_0055
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart5_0055
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart6_0055
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart7_0055

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem anchorRange_0055 :
    anchorHistoryChunk0055.IndexedValid squarefreeOracle 5000000 56320 := by
  have h0 := anchorPart0_0055
  simp only [anchorPartValid0_0055, anchorHistoryChunk0055] at h0
  have h1 := anchorPart1_0055
  simp only [anchorPartValid1_0055, anchorHistoryChunk0055] at h1
  have h2 := anchorPart2_0055
  simp only [anchorPartValid2_0055, anchorHistoryChunk0055] at h2
  have h3 := anchorPart3_0055
  simp only [anchorPartValid3_0055, anchorHistoryChunk0055] at h3
  have h4 := anchorPart4_0055
  simp only [anchorPartValid4_0055, anchorHistoryChunk0055] at h4
  have h5 := anchorPart5_0055
  simp only [anchorPartValid5_0055, anchorHistoryChunk0055] at h5
  have h6 := anchorPart6_0055
  simp only [anchorPartValid6_0055, anchorHistoryChunk0055] at h6
  have h7 := anchorPart7_0055
  simp only [anchorPartValid7_0055, anchorHistoryChunk0055] at h7
  unfold anchorHistoryChunk0055
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
