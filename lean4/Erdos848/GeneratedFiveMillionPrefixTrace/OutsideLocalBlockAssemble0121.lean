import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideLocalBlockPart0_0121
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideLocalBlockPart1_0121

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem outsideLocalRange_0121 :
    outsideHistoryChunk0121.LocallyIndexedValid anchorHistories 5000000 := by
  have h0 := outsideLocalPart0_0121
  simp only [outsideLocalPartValid0_0121, outsideHistoryChunk0121] at h0
  have h1 := outsideLocalPart1_0121
  simp only [outsideLocalPartValid1_0121, outsideHistoryChunk0121] at h1
  have h2 := outsideLocalPart2_0121
  simp only [outsideLocalPartValid2_0121, outsideHistoryChunk0121] at h2
  have h3 := outsideLocalPart3_0121
  simp only [outsideLocalPartValid3_0121, outsideHistoryChunk0121] at h3
  have h4 := outsideLocalPart4_0121
  simp only [outsideLocalPartValid4_0121, outsideHistoryChunk0121] at h4
  have h5 := outsideLocalPart5_0121
  simp only [outsideLocalPartValid5_0121, outsideHistoryChunk0121] at h5
  have h6 := outsideLocalPart6_0121
  simp only [outsideLocalPartValid6_0121, outsideHistoryChunk0121] at h6
  have h7 := outsideLocalPart7_0121
  simp only [outsideLocalPartValid7_0121, outsideHistoryChunk0121] at h7
  unfold outsideHistoryChunk0121
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
