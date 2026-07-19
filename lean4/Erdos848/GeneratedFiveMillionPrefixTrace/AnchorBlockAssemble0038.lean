import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart0_0038
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart1_0038
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart2_0038
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart3_0038
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart4_0038
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart5_0038
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart6_0038
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart7_0038

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem anchorRange_0038 :
    anchorHistoryChunk0038.IndexedValid squarefreeOracle 5000000 38912 := by
  have h0 := anchorPart0_0038
  simp only [anchorPartValid0_0038, anchorHistoryChunk0038] at h0
  have h1 := anchorPart1_0038
  simp only [anchorPartValid1_0038, anchorHistoryChunk0038] at h1
  have h2 := anchorPart2_0038
  simp only [anchorPartValid2_0038, anchorHistoryChunk0038] at h2
  have h3 := anchorPart3_0038
  simp only [anchorPartValid3_0038, anchorHistoryChunk0038] at h3
  have h4 := anchorPart4_0038
  simp only [anchorPartValid4_0038, anchorHistoryChunk0038] at h4
  have h5 := anchorPart5_0038
  simp only [anchorPartValid5_0038, anchorHistoryChunk0038] at h5
  have h6 := anchorPart6_0038
  simp only [anchorPartValid6_0038, anchorHistoryChunk0038] at h6
  have h7 := anchorPart7_0038
  simp only [anchorPartValid7_0038, anchorHistoryChunk0038] at h7
  unfold anchorHistoryChunk0038
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
