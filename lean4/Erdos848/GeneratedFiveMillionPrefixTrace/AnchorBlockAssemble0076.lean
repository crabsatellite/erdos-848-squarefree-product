import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart0_0076
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart1_0076
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart2_0076
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart3_0076
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart4_0076
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart5_0076
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart6_0076
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart7_0076

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem anchorRange_0076 :
    anchorHistoryChunk0076.IndexedValid squarefreeOracle 5000000 77824 := by
  have h0 := anchorPart0_0076
  simp only [anchorPartValid0_0076, anchorHistoryChunk0076] at h0
  have h1 := anchorPart1_0076
  simp only [anchorPartValid1_0076, anchorHistoryChunk0076] at h1
  have h2 := anchorPart2_0076
  simp only [anchorPartValid2_0076, anchorHistoryChunk0076] at h2
  have h3 := anchorPart3_0076
  simp only [anchorPartValid3_0076, anchorHistoryChunk0076] at h3
  have h4 := anchorPart4_0076
  simp only [anchorPartValid4_0076, anchorHistoryChunk0076] at h4
  have h5 := anchorPart5_0076
  simp only [anchorPartValid5_0076, anchorHistoryChunk0076] at h5
  have h6 := anchorPart6_0076
  simp only [anchorPartValid6_0076, anchorHistoryChunk0076] at h6
  have h7 := anchorPart7_0076
  simp only [anchorPartValid7_0076, anchorHistoryChunk0076] at h7
  unfold anchorHistoryChunk0076
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
