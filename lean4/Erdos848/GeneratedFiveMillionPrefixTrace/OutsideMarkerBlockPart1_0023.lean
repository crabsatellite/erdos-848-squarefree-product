import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0023

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0023 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 24064
  | _ => True

theorem outsideMarkerPart4_0023 : outsideMarkerPartValid4_0023 outsideHistoryChunk0023 := by
  unfold outsideMarkerPartValid4_0023 outsideHistoryChunk0023
  decide

def outsideMarkerPartValid5_0023 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 24192
  | _ => True

theorem outsideMarkerPart5_0023 : outsideMarkerPartValid5_0023 outsideHistoryChunk0023 := by
  unfold outsideMarkerPartValid5_0023 outsideHistoryChunk0023
  decide

def outsideMarkerPartValid6_0023 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 24320
  | _ => True

theorem outsideMarkerPart6_0023 : outsideMarkerPartValid6_0023 outsideHistoryChunk0023 := by
  unfold outsideMarkerPartValid6_0023 outsideHistoryChunk0023
  decide

def outsideMarkerPartValid7_0023 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 24448
  | _ => True

theorem outsideMarkerPart7_0023 : outsideMarkerPartValid7_0023 outsideHistoryChunk0023 := by
  unfold outsideMarkerPartValid7_0023 outsideHistoryChunk0023
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
