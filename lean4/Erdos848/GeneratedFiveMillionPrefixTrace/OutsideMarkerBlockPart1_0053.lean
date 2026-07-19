import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0053

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0053 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 54784
  | _ => True

theorem outsideMarkerPart4_0053 : outsideMarkerPartValid4_0053 outsideHistoryChunk0053 := by
  unfold outsideMarkerPartValid4_0053 outsideHistoryChunk0053
  decide

def outsideMarkerPartValid5_0053 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 54912
  | _ => True

theorem outsideMarkerPart5_0053 : outsideMarkerPartValid5_0053 outsideHistoryChunk0053 := by
  unfold outsideMarkerPartValid5_0053 outsideHistoryChunk0053
  decide

def outsideMarkerPartValid6_0053 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 55040
  | _ => True

theorem outsideMarkerPart6_0053 : outsideMarkerPartValid6_0053 outsideHistoryChunk0053 := by
  unfold outsideMarkerPartValid6_0053 outsideHistoryChunk0053
  decide

def outsideMarkerPartValid7_0053 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 55168
  | _ => True

theorem outsideMarkerPart7_0053 : outsideMarkerPartValid7_0053 outsideHistoryChunk0053 := by
  unfold outsideMarkerPartValid7_0053 outsideHistoryChunk0053
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
