import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0093

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0093 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 95744
  | _ => True

theorem outsideMarkerPart4_0093 : outsideMarkerPartValid4_0093 outsideHistoryChunk0093 := by
  unfold outsideMarkerPartValid4_0093 outsideHistoryChunk0093
  decide

def outsideMarkerPartValid5_0093 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 95872
  | _ => True

theorem outsideMarkerPart5_0093 : outsideMarkerPartValid5_0093 outsideHistoryChunk0093 := by
  unfold outsideMarkerPartValid5_0093 outsideHistoryChunk0093
  decide

def outsideMarkerPartValid6_0093 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 96000
  | _ => True

theorem outsideMarkerPart6_0093 : outsideMarkerPartValid6_0093 outsideHistoryChunk0093 := by
  unfold outsideMarkerPartValid6_0093 outsideHistoryChunk0093
  decide

def outsideMarkerPartValid7_0093 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 96128
  | _ => True

theorem outsideMarkerPart7_0093 : outsideMarkerPartValid7_0093 outsideHistoryChunk0093 := by
  unfold outsideMarkerPartValid7_0093 outsideHistoryChunk0093
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
