import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0093

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0093 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 95232
  | _ => True

theorem outsideMarkerPart0_0093 : outsideMarkerPartValid0_0093 outsideHistoryChunk0093 := by
  unfold outsideMarkerPartValid0_0093 outsideHistoryChunk0093
  decide

def outsideMarkerPartValid1_0093 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 95360
  | _ => True

theorem outsideMarkerPart1_0093 : outsideMarkerPartValid1_0093 outsideHistoryChunk0093 := by
  unfold outsideMarkerPartValid1_0093 outsideHistoryChunk0093
  decide

def outsideMarkerPartValid2_0093 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 95488
  | _ => True

theorem outsideMarkerPart2_0093 : outsideMarkerPartValid2_0093 outsideHistoryChunk0093 := by
  unfold outsideMarkerPartValid2_0093 outsideHistoryChunk0093
  decide

def outsideMarkerPartValid3_0093 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 95616
  | _ => True

theorem outsideMarkerPart3_0093 : outsideMarkerPartValid3_0093 outsideHistoryChunk0093 := by
  unfold outsideMarkerPartValid3_0093 outsideHistoryChunk0093
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
