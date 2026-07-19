import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0117

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0117 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 120320
  | _ => True

theorem outsideMarkerPart4_0117 : outsideMarkerPartValid4_0117 outsideHistoryChunk0117 := by
  unfold outsideMarkerPartValid4_0117 outsideHistoryChunk0117
  decide

def outsideMarkerPartValid5_0117 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 120448
  | _ => True

theorem outsideMarkerPart5_0117 : outsideMarkerPartValid5_0117 outsideHistoryChunk0117 := by
  unfold outsideMarkerPartValid5_0117 outsideHistoryChunk0117
  decide

def outsideMarkerPartValid6_0117 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 120576
  | _ => True

theorem outsideMarkerPart6_0117 : outsideMarkerPartValid6_0117 outsideHistoryChunk0117 := by
  unfold outsideMarkerPartValid6_0117 outsideHistoryChunk0117
  decide

def outsideMarkerPartValid7_0117 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 120704
  | _ => True

theorem outsideMarkerPart7_0117 : outsideMarkerPartValid7_0117 outsideHistoryChunk0117 := by
  unfold outsideMarkerPartValid7_0117 outsideHistoryChunk0117
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
