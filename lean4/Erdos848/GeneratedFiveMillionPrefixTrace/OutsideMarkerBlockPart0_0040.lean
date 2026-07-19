import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0040

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0040 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 40960
  | _ => True

theorem outsideMarkerPart0_0040 : outsideMarkerPartValid0_0040 outsideHistoryChunk0040 := by
  unfold outsideMarkerPartValid0_0040 outsideHistoryChunk0040
  decide

def outsideMarkerPartValid1_0040 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 41088
  | _ => True

theorem outsideMarkerPart1_0040 : outsideMarkerPartValid1_0040 outsideHistoryChunk0040 := by
  unfold outsideMarkerPartValid1_0040 outsideHistoryChunk0040
  decide

def outsideMarkerPartValid2_0040 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 41216
  | _ => True

theorem outsideMarkerPart2_0040 : outsideMarkerPartValid2_0040 outsideHistoryChunk0040 := by
  unfold outsideMarkerPartValid2_0040 outsideHistoryChunk0040
  decide

def outsideMarkerPartValid3_0040 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 41344
  | _ => True

theorem outsideMarkerPart3_0040 : outsideMarkerPartValid3_0040 outsideHistoryChunk0040 := by
  unfold outsideMarkerPartValid3_0040 outsideHistoryChunk0040
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
