import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0022

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0022 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 23040
  | _ => True

theorem outsideMarkerPart4_0022 : outsideMarkerPartValid4_0022 outsideHistoryChunk0022 := by
  unfold outsideMarkerPartValid4_0022 outsideHistoryChunk0022
  decide

def outsideMarkerPartValid5_0022 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 23168
  | _ => True

theorem outsideMarkerPart5_0022 : outsideMarkerPartValid5_0022 outsideHistoryChunk0022 := by
  unfold outsideMarkerPartValid5_0022 outsideHistoryChunk0022
  decide

def outsideMarkerPartValid6_0022 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 23296
  | _ => True

theorem outsideMarkerPart6_0022 : outsideMarkerPartValid6_0022 outsideHistoryChunk0022 := by
  unfold outsideMarkerPartValid6_0022 outsideHistoryChunk0022
  decide

def outsideMarkerPartValid7_0022 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 23424
  | _ => True

theorem outsideMarkerPart7_0022 : outsideMarkerPartValid7_0022 outsideHistoryChunk0022 := by
  unfold outsideMarkerPartValid7_0022 outsideHistoryChunk0022
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
