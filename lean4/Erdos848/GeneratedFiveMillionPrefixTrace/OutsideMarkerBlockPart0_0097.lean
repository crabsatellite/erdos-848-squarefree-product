import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0097

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0097 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 99328
  | _ => True

theorem outsideMarkerPart0_0097 : outsideMarkerPartValid0_0097 outsideHistoryChunk0097 := by
  unfold outsideMarkerPartValid0_0097 outsideHistoryChunk0097
  decide

def outsideMarkerPartValid1_0097 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 99456
  | _ => True

theorem outsideMarkerPart1_0097 : outsideMarkerPartValid1_0097 outsideHistoryChunk0097 := by
  unfold outsideMarkerPartValid1_0097 outsideHistoryChunk0097
  decide

def outsideMarkerPartValid2_0097 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 99584
  | _ => True

theorem outsideMarkerPart2_0097 : outsideMarkerPartValid2_0097 outsideHistoryChunk0097 := by
  unfold outsideMarkerPartValid2_0097 outsideHistoryChunk0097
  decide

def outsideMarkerPartValid3_0097 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 99712
  | _ => True

theorem outsideMarkerPart3_0097 : outsideMarkerPartValid3_0097 outsideHistoryChunk0097 := by
  unfold outsideMarkerPartValid3_0097 outsideHistoryChunk0097
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
