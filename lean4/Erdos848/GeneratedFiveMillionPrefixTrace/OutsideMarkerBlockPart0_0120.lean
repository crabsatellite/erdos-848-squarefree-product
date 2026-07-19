import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0120

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0120 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 122880
  | _ => True

theorem outsideMarkerPart0_0120 : outsideMarkerPartValid0_0120 outsideHistoryChunk0120 := by
  unfold outsideMarkerPartValid0_0120 outsideHistoryChunk0120
  decide

def outsideMarkerPartValid1_0120 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 123008
  | _ => True

theorem outsideMarkerPart1_0120 : outsideMarkerPartValid1_0120 outsideHistoryChunk0120 := by
  unfold outsideMarkerPartValid1_0120 outsideHistoryChunk0120
  decide

def outsideMarkerPartValid2_0120 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 123136
  | _ => True

theorem outsideMarkerPart2_0120 : outsideMarkerPartValid2_0120 outsideHistoryChunk0120 := by
  unfold outsideMarkerPartValid2_0120 outsideHistoryChunk0120
  decide

def outsideMarkerPartValid3_0120 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 123264
  | _ => True

theorem outsideMarkerPart3_0120 : outsideMarkerPartValid3_0120 outsideHistoryChunk0120 := by
  unfold outsideMarkerPartValid3_0120 outsideHistoryChunk0120
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
