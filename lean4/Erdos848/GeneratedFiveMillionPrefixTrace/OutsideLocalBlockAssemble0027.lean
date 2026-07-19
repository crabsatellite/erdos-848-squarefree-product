import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideLocalBlockPart0_0027
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideLocalBlockPart1_0027

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem outsideLocalRange_0027 :
    outsideHistoryChunk0027.LocallyIndexedValid anchorHistories 5000000 := by
  have h0 := outsideLocalPart0_0027
  simp only [outsideLocalPartValid0_0027, outsideHistoryChunk0027] at h0
  have h1 := outsideLocalPart1_0027
  simp only [outsideLocalPartValid1_0027, outsideHistoryChunk0027] at h1
  have h2 := outsideLocalPart2_0027
  simp only [outsideLocalPartValid2_0027, outsideHistoryChunk0027] at h2
  have h3 := outsideLocalPart3_0027
  simp only [outsideLocalPartValid3_0027, outsideHistoryChunk0027] at h3
  have h4 := outsideLocalPart4_0027
  simp only [outsideLocalPartValid4_0027, outsideHistoryChunk0027] at h4
  have h5 := outsideLocalPart5_0027
  simp only [outsideLocalPartValid5_0027, outsideHistoryChunk0027] at h5
  have h6 := outsideLocalPart6_0027
  simp only [outsideLocalPartValid6_0027, outsideHistoryChunk0027] at h6
  have h7 := outsideLocalPart7_0027
  simp only [outsideLocalPartValid7_0027, outsideHistoryChunk0027] at h7
  unfold outsideHistoryChunk0027
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
