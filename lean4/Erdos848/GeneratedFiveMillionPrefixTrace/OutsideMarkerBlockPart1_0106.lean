import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0106

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0106 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 109056
  | _ => True

theorem outsideMarkerPart4_0106 : outsideMarkerPartValid4_0106 outsideHistoryChunk0106 := by
  unfold outsideMarkerPartValid4_0106 outsideHistoryChunk0106
  decide

def outsideMarkerPartValid5_0106 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 109184
  | _ => True

theorem outsideMarkerPart5_0106 : outsideMarkerPartValid5_0106 outsideHistoryChunk0106 := by
  unfold outsideMarkerPartValid5_0106 outsideHistoryChunk0106
  decide

def outsideMarkerPartValid6_0106 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 109312
  | _ => True

theorem outsideMarkerPart6_0106 : outsideMarkerPartValid6_0106 outsideHistoryChunk0106 := by
  unfold outsideMarkerPartValid6_0106 outsideHistoryChunk0106
  decide

def outsideMarkerPartValid7_0106 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 109440
  | _ => True

theorem outsideMarkerPart7_0106 : outsideMarkerPartValid7_0106 outsideHistoryChunk0106 := by
  unfold outsideMarkerPartValid7_0106 outsideHistoryChunk0106
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
