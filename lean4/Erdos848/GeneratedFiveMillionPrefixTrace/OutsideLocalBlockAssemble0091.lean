import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideLocalBlockPart0_0091
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideLocalBlockPart1_0091

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem outsideLocalRange_0091 :
    outsideHistoryChunk0091.LocallyIndexedValid anchorHistories 5000000 := by
  have h0 := outsideLocalPart0_0091
  simp only [outsideLocalPartValid0_0091, outsideHistoryChunk0091] at h0
  have h1 := outsideLocalPart1_0091
  simp only [outsideLocalPartValid1_0091, outsideHistoryChunk0091] at h1
  have h2 := outsideLocalPart2_0091
  simp only [outsideLocalPartValid2_0091, outsideHistoryChunk0091] at h2
  have h3 := outsideLocalPart3_0091
  simp only [outsideLocalPartValid3_0091, outsideHistoryChunk0091] at h3
  have h4 := outsideLocalPart4_0091
  simp only [outsideLocalPartValid4_0091, outsideHistoryChunk0091] at h4
  have h5 := outsideLocalPart5_0091
  simp only [outsideLocalPartValid5_0091, outsideHistoryChunk0091] at h5
  have h6 := outsideLocalPart6_0091
  simp only [outsideLocalPartValid6_0091, outsideHistoryChunk0091] at h6
  have h7 := outsideLocalPart7_0091
  simp only [outsideLocalPartValid7_0091, outsideHistoryChunk0091] at h7
  unfold outsideHistoryChunk0091
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
