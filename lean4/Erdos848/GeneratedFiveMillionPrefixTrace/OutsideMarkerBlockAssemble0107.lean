import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideMarkerBlockPart0_0107
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideMarkerBlockPart1_0107

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem outsideMarkerRange_0107 :
    outsideHistoryChunk0107.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 109568 := by
  have h0 := outsideMarkerPart0_0107
  simp only [outsideMarkerPartValid0_0107, outsideHistoryChunk0107] at h0
  have h1 := outsideMarkerPart1_0107
  simp only [outsideMarkerPartValid1_0107, outsideHistoryChunk0107] at h1
  have h2 := outsideMarkerPart2_0107
  simp only [outsideMarkerPartValid2_0107, outsideHistoryChunk0107] at h2
  have h3 := outsideMarkerPart3_0107
  simp only [outsideMarkerPartValid3_0107, outsideHistoryChunk0107] at h3
  have h4 := outsideMarkerPart4_0107
  simp only [outsideMarkerPartValid4_0107, outsideHistoryChunk0107] at h4
  have h5 := outsideMarkerPart5_0107
  simp only [outsideMarkerPartValid5_0107, outsideHistoryChunk0107] at h5
  have h6 := outsideMarkerPart6_0107
  simp only [outsideMarkerPartValid6_0107, outsideHistoryChunk0107] at h6
  have h7 := outsideMarkerPart7_0107
  simp only [outsideMarkerPartValid7_0107, outsideHistoryChunk0107] at h7
  unfold outsideHistoryChunk0107
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
