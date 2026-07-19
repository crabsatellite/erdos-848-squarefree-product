import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0060

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0060 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 61952
  | _ => True

theorem outsideMarkerPart4_0060 : outsideMarkerPartValid4_0060 outsideHistoryChunk0060 := by
  unfold outsideMarkerPartValid4_0060 outsideHistoryChunk0060
  decide

def outsideMarkerPartValid5_0060 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 62080
  | _ => True

theorem outsideMarkerPart5_0060 : outsideMarkerPartValid5_0060 outsideHistoryChunk0060 := by
  unfold outsideMarkerPartValid5_0060 outsideHistoryChunk0060
  decide

def outsideMarkerPartValid6_0060 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 62208
  | _ => True

theorem outsideMarkerPart6_0060 : outsideMarkerPartValid6_0060 outsideHistoryChunk0060 := by
  unfold outsideMarkerPartValid6_0060 outsideHistoryChunk0060
  decide

def outsideMarkerPartValid7_0060 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 62336
  | _ => True

theorem outsideMarkerPart7_0060 : outsideMarkerPartValid7_0060 outsideHistoryChunk0060 := by
  unfold outsideMarkerPartValid7_0060 outsideHistoryChunk0060
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
