import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0044

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0044 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 45056
  | _ => True

theorem outsideMarkerPart0_0044 : outsideMarkerPartValid0_0044 outsideHistoryChunk0044 := by
  unfold outsideMarkerPartValid0_0044 outsideHistoryChunk0044
  decide

def outsideMarkerPartValid1_0044 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 45184
  | _ => True

theorem outsideMarkerPart1_0044 : outsideMarkerPartValid1_0044 outsideHistoryChunk0044 := by
  unfold outsideMarkerPartValid1_0044 outsideHistoryChunk0044
  decide

def outsideMarkerPartValid2_0044 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 45312
  | _ => True

theorem outsideMarkerPart2_0044 : outsideMarkerPartValid2_0044 outsideHistoryChunk0044 := by
  unfold outsideMarkerPartValid2_0044 outsideHistoryChunk0044
  decide

def outsideMarkerPartValid3_0044 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 45440
  | _ => True

theorem outsideMarkerPart3_0044 : outsideMarkerPartValid3_0044 outsideHistoryChunk0044 := by
  unfold outsideMarkerPartValid3_0044 outsideHistoryChunk0044
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
