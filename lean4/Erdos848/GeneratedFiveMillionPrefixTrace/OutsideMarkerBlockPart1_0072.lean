import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0072

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0072 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 74240
  | _ => True

theorem outsideMarkerPart4_0072 : outsideMarkerPartValid4_0072 outsideHistoryChunk0072 := by
  unfold outsideMarkerPartValid4_0072 outsideHistoryChunk0072
  decide

def outsideMarkerPartValid5_0072 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 74368
  | _ => True

theorem outsideMarkerPart5_0072 : outsideMarkerPartValid5_0072 outsideHistoryChunk0072 := by
  unfold outsideMarkerPartValid5_0072 outsideHistoryChunk0072
  decide

def outsideMarkerPartValid6_0072 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 74496
  | _ => True

theorem outsideMarkerPart6_0072 : outsideMarkerPartValid6_0072 outsideHistoryChunk0072 := by
  unfold outsideMarkerPartValid6_0072 outsideHistoryChunk0072
  decide

def outsideMarkerPartValid7_0072 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 74624
  | _ => True

theorem outsideMarkerPart7_0072 : outsideMarkerPartValid7_0072 outsideHistoryChunk0072 := by
  unfold outsideMarkerPartValid7_0072 outsideHistoryChunk0072
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
