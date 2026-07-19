import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0086

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0086 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 88576
  | _ => True

theorem outsideMarkerPart4_0086 : outsideMarkerPartValid4_0086 outsideHistoryChunk0086 := by
  unfold outsideMarkerPartValid4_0086 outsideHistoryChunk0086
  decide

def outsideMarkerPartValid5_0086 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 88704
  | _ => True

theorem outsideMarkerPart5_0086 : outsideMarkerPartValid5_0086 outsideHistoryChunk0086 := by
  unfold outsideMarkerPartValid5_0086 outsideHistoryChunk0086
  decide

def outsideMarkerPartValid6_0086 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 88832
  | _ => True

theorem outsideMarkerPart6_0086 : outsideMarkerPartValid6_0086 outsideHistoryChunk0086 := by
  unfold outsideMarkerPartValid6_0086 outsideHistoryChunk0086
  decide

def outsideMarkerPartValid7_0086 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 88960
  | _ => True

theorem outsideMarkerPart7_0086 : outsideMarkerPartValid7_0086 outsideHistoryChunk0086 := by
  unfold outsideMarkerPartValid7_0086 outsideHistoryChunk0086
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
