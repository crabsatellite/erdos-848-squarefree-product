import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0101

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0101 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 103936
  | _ => True

theorem outsideMarkerPart4_0101 : outsideMarkerPartValid4_0101 outsideHistoryChunk0101 := by
  unfold outsideMarkerPartValid4_0101 outsideHistoryChunk0101
  decide

def outsideMarkerPartValid5_0101 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 104064
  | _ => True

theorem outsideMarkerPart5_0101 : outsideMarkerPartValid5_0101 outsideHistoryChunk0101 := by
  unfold outsideMarkerPartValid5_0101 outsideHistoryChunk0101
  decide

def outsideMarkerPartValid6_0101 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 104192
  | _ => True

theorem outsideMarkerPart6_0101 : outsideMarkerPartValid6_0101 outsideHistoryChunk0101 := by
  unfold outsideMarkerPartValid6_0101 outsideHistoryChunk0101
  decide

def outsideMarkerPartValid7_0101 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 104320
  | _ => True

theorem outsideMarkerPart7_0101 : outsideMarkerPartValid7_0101 outsideHistoryChunk0101 := by
  unfold outsideMarkerPartValid7_0101 outsideHistoryChunk0101
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
