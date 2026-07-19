import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0065

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0065 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 67072
  | _ => True

theorem outsideMarkerPart4_0065 : outsideMarkerPartValid4_0065 outsideHistoryChunk0065 := by
  unfold outsideMarkerPartValid4_0065 outsideHistoryChunk0065
  decide

def outsideMarkerPartValid5_0065 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 67200
  | _ => True

theorem outsideMarkerPart5_0065 : outsideMarkerPartValid5_0065 outsideHistoryChunk0065 := by
  unfold outsideMarkerPartValid5_0065 outsideHistoryChunk0065
  decide

def outsideMarkerPartValid6_0065 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 67328
  | _ => True

theorem outsideMarkerPart6_0065 : outsideMarkerPartValid6_0065 outsideHistoryChunk0065 := by
  unfold outsideMarkerPartValid6_0065 outsideHistoryChunk0065
  decide

def outsideMarkerPartValid7_0065 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 67456
  | _ => True

theorem outsideMarkerPart7_0065 : outsideMarkerPartValid7_0065 outsideHistoryChunk0065 := by
  unfold outsideMarkerPartValid7_0065 outsideHistoryChunk0065
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
