import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0119

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0119 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 122368
  | _ => True

theorem outsideMarkerPart4_0119 : outsideMarkerPartValid4_0119 outsideHistoryChunk0119 := by
  unfold outsideMarkerPartValid4_0119 outsideHistoryChunk0119
  decide

def outsideMarkerPartValid5_0119 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 122496
  | _ => True

theorem outsideMarkerPart5_0119 : outsideMarkerPartValid5_0119 outsideHistoryChunk0119 := by
  unfold outsideMarkerPartValid5_0119 outsideHistoryChunk0119
  decide

def outsideMarkerPartValid6_0119 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 122624
  | _ => True

theorem outsideMarkerPart6_0119 : outsideMarkerPartValid6_0119 outsideHistoryChunk0119 := by
  unfold outsideMarkerPartValid6_0119 outsideHistoryChunk0119
  decide

def outsideMarkerPartValid7_0119 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 122752
  | _ => True

theorem outsideMarkerPart7_0119 : outsideMarkerPartValid7_0119 outsideHistoryChunk0119 := by
  unfold outsideMarkerPartValid7_0119 outsideHistoryChunk0119
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
