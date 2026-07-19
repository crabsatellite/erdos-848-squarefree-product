import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart0_0157
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart1_0157
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart2_0157
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart3_0157
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart4_0157
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart5_0157
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart6_0157
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart7_0157

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem anchorRange_0157 :
    anchorHistoryChunk0157.IndexedValid squarefreeOracle 5000000 160768 := by
  have h0 := anchorPart0_0157
  simp only [anchorPartValid0_0157, anchorHistoryChunk0157] at h0
  have h1 := anchorPart1_0157
  simp only [anchorPartValid1_0157, anchorHistoryChunk0157] at h1
  have h2 := anchorPart2_0157
  simp only [anchorPartValid2_0157, anchorHistoryChunk0157] at h2
  have h3 := anchorPart3_0157
  simp only [anchorPartValid3_0157, anchorHistoryChunk0157] at h3
  have h4 := anchorPart4_0157
  simp only [anchorPartValid4_0157, anchorHistoryChunk0157] at h4
  have h5 := anchorPart5_0157
  simp only [anchorPartValid5_0157, anchorHistoryChunk0157] at h5
  have h6 := anchorPart6_0157
  simp only [anchorPartValid6_0157, anchorHistoryChunk0157] at h6
  have h7 := anchorPart7_0157
  simp only [anchorPartValid7_0157, anchorHistoryChunk0157] at h7
  unfold anchorHistoryChunk0157
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
