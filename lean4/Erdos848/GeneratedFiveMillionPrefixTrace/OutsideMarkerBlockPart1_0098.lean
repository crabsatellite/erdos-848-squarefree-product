import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0098

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0098 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 100864
  | _ => True

theorem outsideMarkerPart4_0098 : outsideMarkerPartValid4_0098 outsideHistoryChunk0098 := by
  unfold outsideMarkerPartValid4_0098 outsideHistoryChunk0098
  decide

def outsideMarkerPartValid5_0098 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 100992
  | _ => True

theorem outsideMarkerPart5_0098 : outsideMarkerPartValid5_0098 outsideHistoryChunk0098 := by
  unfold outsideMarkerPartValid5_0098 outsideHistoryChunk0098
  decide

def outsideMarkerPartValid6_0098 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 101120
  | _ => True

theorem outsideMarkerPart6_0098 : outsideMarkerPartValid6_0098 outsideHistoryChunk0098 := by
  unfold outsideMarkerPartValid6_0098 outsideHistoryChunk0098
  decide

def outsideMarkerPartValid7_0098 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 101248
  | _ => True

theorem outsideMarkerPart7_0098 : outsideMarkerPartValid7_0098 outsideHistoryChunk0098 := by
  unfold outsideMarkerPartValid7_0098 outsideHistoryChunk0098
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
