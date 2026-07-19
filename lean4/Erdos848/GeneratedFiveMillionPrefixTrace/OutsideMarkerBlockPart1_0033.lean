import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0033

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0033 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 34304
  | _ => True

theorem outsideMarkerPart4_0033 : outsideMarkerPartValid4_0033 outsideHistoryChunk0033 := by
  unfold outsideMarkerPartValid4_0033 outsideHistoryChunk0033
  decide

def outsideMarkerPartValid5_0033 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 34432
  | _ => True

theorem outsideMarkerPart5_0033 : outsideMarkerPartValid5_0033 outsideHistoryChunk0033 := by
  unfold outsideMarkerPartValid5_0033 outsideHistoryChunk0033
  decide

def outsideMarkerPartValid6_0033 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 34560
  | _ => True

theorem outsideMarkerPart6_0033 : outsideMarkerPartValid6_0033 outsideHistoryChunk0033 := by
  unfold outsideMarkerPartValid6_0033 outsideHistoryChunk0033
  decide

def outsideMarkerPartValid7_0033 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 34688
  | _ => True

theorem outsideMarkerPart7_0033 : outsideMarkerPartValid7_0033 outsideHistoryChunk0033 := by
  unfold outsideMarkerPartValid7_0033 outsideHistoryChunk0033
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
