import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0069

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0069 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 71168
  | _ => True

theorem outsideMarkerPart4_0069 : outsideMarkerPartValid4_0069 outsideHistoryChunk0069 := by
  unfold outsideMarkerPartValid4_0069 outsideHistoryChunk0069
  decide

def outsideMarkerPartValid5_0069 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 71296
  | _ => True

theorem outsideMarkerPart5_0069 : outsideMarkerPartValid5_0069 outsideHistoryChunk0069 := by
  unfold outsideMarkerPartValid5_0069 outsideHistoryChunk0069
  decide

def outsideMarkerPartValid6_0069 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 71424
  | _ => True

theorem outsideMarkerPart6_0069 : outsideMarkerPartValid6_0069 outsideHistoryChunk0069 := by
  unfold outsideMarkerPartValid6_0069 outsideHistoryChunk0069
  decide

def outsideMarkerPartValid7_0069 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 71552
  | _ => True

theorem outsideMarkerPart7_0069 : outsideMarkerPartValid7_0069 outsideHistoryChunk0069 := by
  unfold outsideMarkerPartValid7_0069 outsideHistoryChunk0069
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
