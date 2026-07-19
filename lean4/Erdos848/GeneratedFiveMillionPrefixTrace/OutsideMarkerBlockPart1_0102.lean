import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0102

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0102 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 104960
  | _ => True

theorem outsideMarkerPart4_0102 : outsideMarkerPartValid4_0102 outsideHistoryChunk0102 := by
  unfold outsideMarkerPartValid4_0102 outsideHistoryChunk0102
  decide

def outsideMarkerPartValid5_0102 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 105088
  | _ => True

theorem outsideMarkerPart5_0102 : outsideMarkerPartValid5_0102 outsideHistoryChunk0102 := by
  unfold outsideMarkerPartValid5_0102 outsideHistoryChunk0102
  decide

def outsideMarkerPartValid6_0102 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 105216
  | _ => True

theorem outsideMarkerPart6_0102 : outsideMarkerPartValid6_0102 outsideHistoryChunk0102 := by
  unfold outsideMarkerPartValid6_0102 outsideHistoryChunk0102
  decide

def outsideMarkerPartValid7_0102 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 105344
  | _ => True

theorem outsideMarkerPart7_0102 : outsideMarkerPartValid7_0102 outsideHistoryChunk0102 := by
  unfold outsideMarkerPartValid7_0102 outsideHistoryChunk0102
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
