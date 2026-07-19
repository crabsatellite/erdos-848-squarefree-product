import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideMarkerBlockPart0_0090
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideMarkerBlockPart1_0090

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem outsideMarkerRange_0090 :
    outsideHistoryChunk0090.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 92160 := by
  have h0 := outsideMarkerPart0_0090
  simp only [outsideMarkerPartValid0_0090, outsideHistoryChunk0090] at h0
  have h1 := outsideMarkerPart1_0090
  simp only [outsideMarkerPartValid1_0090, outsideHistoryChunk0090] at h1
  have h2 := outsideMarkerPart2_0090
  simp only [outsideMarkerPartValid2_0090, outsideHistoryChunk0090] at h2
  have h3 := outsideMarkerPart3_0090
  simp only [outsideMarkerPartValid3_0090, outsideHistoryChunk0090] at h3
  have h4 := outsideMarkerPart4_0090
  simp only [outsideMarkerPartValid4_0090, outsideHistoryChunk0090] at h4
  have h5 := outsideMarkerPart5_0090
  simp only [outsideMarkerPartValid5_0090, outsideHistoryChunk0090] at h5
  have h6 := outsideMarkerPart6_0090
  simp only [outsideMarkerPartValid6_0090, outsideHistoryChunk0090] at h6
  have h7 := outsideMarkerPart7_0090
  simp only [outsideMarkerPartValid7_0090, outsideHistoryChunk0090] at h7
  unfold outsideHistoryChunk0090
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
