import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0114

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0114 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 117248
  | _ => True

theorem outsideMarkerPart4_0114 : outsideMarkerPartValid4_0114 outsideHistoryChunk0114 := by
  unfold outsideMarkerPartValid4_0114 outsideHistoryChunk0114
  decide

def outsideMarkerPartValid5_0114 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 117376
  | _ => True

theorem outsideMarkerPart5_0114 : outsideMarkerPartValid5_0114 outsideHistoryChunk0114 := by
  unfold outsideMarkerPartValid5_0114 outsideHistoryChunk0114
  decide

def outsideMarkerPartValid6_0114 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 117504
  | _ => True

theorem outsideMarkerPart6_0114 : outsideMarkerPartValid6_0114 outsideHistoryChunk0114 := by
  unfold outsideMarkerPartValid6_0114 outsideHistoryChunk0114
  decide

def outsideMarkerPartValid7_0114 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 117632
  | _ => True

theorem outsideMarkerPart7_0114 : outsideMarkerPartValid7_0114 outsideHistoryChunk0114 := by
  unfold outsideMarkerPartValid7_0114 outsideHistoryChunk0114
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
