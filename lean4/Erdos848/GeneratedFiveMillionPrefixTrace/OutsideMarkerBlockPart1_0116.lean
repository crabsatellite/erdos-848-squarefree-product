import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0116

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0116 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 119296
  | _ => True

theorem outsideMarkerPart4_0116 : outsideMarkerPartValid4_0116 outsideHistoryChunk0116 := by
  unfold outsideMarkerPartValid4_0116 outsideHistoryChunk0116
  decide

def outsideMarkerPartValid5_0116 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 119424
  | _ => True

theorem outsideMarkerPart5_0116 : outsideMarkerPartValid5_0116 outsideHistoryChunk0116 := by
  unfold outsideMarkerPartValid5_0116 outsideHistoryChunk0116
  decide

def outsideMarkerPartValid6_0116 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 119552
  | _ => True

theorem outsideMarkerPart6_0116 : outsideMarkerPartValid6_0116 outsideHistoryChunk0116 := by
  unfold outsideMarkerPartValid6_0116 outsideHistoryChunk0116
  decide

def outsideMarkerPartValid7_0116 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 119680
  | _ => True

theorem outsideMarkerPart7_0116 : outsideMarkerPartValid7_0116 outsideHistoryChunk0116 := by
  unfold outsideMarkerPartValid7_0116 outsideHistoryChunk0116
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
