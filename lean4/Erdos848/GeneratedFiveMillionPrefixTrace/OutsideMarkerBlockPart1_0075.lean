import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0075

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0075 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 77312
  | _ => True

theorem outsideMarkerPart4_0075 : outsideMarkerPartValid4_0075 outsideHistoryChunk0075 := by
  unfold outsideMarkerPartValid4_0075 outsideHistoryChunk0075
  decide

def outsideMarkerPartValid5_0075 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 77440
  | _ => True

theorem outsideMarkerPart5_0075 : outsideMarkerPartValid5_0075 outsideHistoryChunk0075 := by
  unfold outsideMarkerPartValid5_0075 outsideHistoryChunk0075
  decide

def outsideMarkerPartValid6_0075 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 77568
  | _ => True

theorem outsideMarkerPart6_0075 : outsideMarkerPartValid6_0075 outsideHistoryChunk0075 := by
  unfold outsideMarkerPartValid6_0075 outsideHistoryChunk0075
  decide

def outsideMarkerPartValid7_0075 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 77696
  | _ => True

theorem outsideMarkerPart7_0075 : outsideMarkerPartValid7_0075 outsideHistoryChunk0075 := by
  unfold outsideMarkerPartValid7_0075 outsideHistoryChunk0075
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
