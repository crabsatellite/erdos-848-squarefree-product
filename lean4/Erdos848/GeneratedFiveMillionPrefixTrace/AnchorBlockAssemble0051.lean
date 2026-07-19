import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart0_0051
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart1_0051
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart2_0051
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart3_0051
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart4_0051
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart5_0051
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart6_0051
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorBlockPart7_0051

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem anchorRange_0051 :
    anchorHistoryChunk0051.IndexedValid squarefreeOracle 5000000 52224 := by
  have h0 := anchorPart0_0051
  simp only [anchorPartValid0_0051, anchorHistoryChunk0051] at h0
  have h1 := anchorPart1_0051
  simp only [anchorPartValid1_0051, anchorHistoryChunk0051] at h1
  have h2 := anchorPart2_0051
  simp only [anchorPartValid2_0051, anchorHistoryChunk0051] at h2
  have h3 := anchorPart3_0051
  simp only [anchorPartValid3_0051, anchorHistoryChunk0051] at h3
  have h4 := anchorPart4_0051
  simp only [anchorPartValid4_0051, anchorHistoryChunk0051] at h4
  have h5 := anchorPart5_0051
  simp only [anchorPartValid5_0051, anchorHistoryChunk0051] at h5
  have h6 := anchorPart6_0051
  simp only [anchorPartValid6_0051, anchorHistoryChunk0051] at h6
  have h7 := anchorPart7_0051
  simp only [anchorPartValid7_0051, anchorHistoryChunk0051] at h7
  unfold anchorHistoryChunk0051
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
