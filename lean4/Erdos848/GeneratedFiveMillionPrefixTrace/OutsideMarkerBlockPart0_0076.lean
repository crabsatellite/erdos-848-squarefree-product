import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0076

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0076 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 77824
  | _ => True

theorem outsideMarkerPart0_0076 : outsideMarkerPartValid0_0076 outsideHistoryChunk0076 := by
  unfold outsideMarkerPartValid0_0076 outsideHistoryChunk0076
  decide

def outsideMarkerPartValid1_0076 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 77952
  | _ => True

theorem outsideMarkerPart1_0076 : outsideMarkerPartValid1_0076 outsideHistoryChunk0076 := by
  unfold outsideMarkerPartValid1_0076 outsideHistoryChunk0076
  decide

def outsideMarkerPartValid2_0076 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 78080
  | _ => True

theorem outsideMarkerPart2_0076 : outsideMarkerPartValid2_0076 outsideHistoryChunk0076 := by
  unfold outsideMarkerPartValid2_0076 outsideHistoryChunk0076
  decide

def outsideMarkerPartValid3_0076 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 78208
  | _ => True

theorem outsideMarkerPart3_0076 : outsideMarkerPartValid3_0076 outsideHistoryChunk0076 := by
  unfold outsideMarkerPartValid3_0076 outsideHistoryChunk0076
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
