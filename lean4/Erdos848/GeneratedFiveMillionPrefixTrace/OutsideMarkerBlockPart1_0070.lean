import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0070

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0070 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 72192
  | _ => True

theorem outsideMarkerPart4_0070 : outsideMarkerPartValid4_0070 outsideHistoryChunk0070 := by
  unfold outsideMarkerPartValid4_0070 outsideHistoryChunk0070
  decide

def outsideMarkerPartValid5_0070 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 72320
  | _ => True

theorem outsideMarkerPart5_0070 : outsideMarkerPartValid5_0070 outsideHistoryChunk0070 := by
  unfold outsideMarkerPartValid5_0070 outsideHistoryChunk0070
  decide

def outsideMarkerPartValid6_0070 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 72448
  | _ => True

theorem outsideMarkerPart6_0070 : outsideMarkerPartValid6_0070 outsideHistoryChunk0070 := by
  unfold outsideMarkerPartValid6_0070 outsideHistoryChunk0070
  decide

def outsideMarkerPartValid7_0070 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 72576
  | _ => True

theorem outsideMarkerPart7_0070 : outsideMarkerPartValid7_0070 outsideHistoryChunk0070 := by
  unfold outsideMarkerPartValid7_0070 outsideHistoryChunk0070
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
