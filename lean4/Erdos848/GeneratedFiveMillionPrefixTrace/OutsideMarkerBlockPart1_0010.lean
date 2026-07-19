import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0010

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0010 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 10752
  | _ => True

theorem outsideMarkerPart4_0010 : outsideMarkerPartValid4_0010 outsideHistoryChunk0010 := by
  unfold outsideMarkerPartValid4_0010 outsideHistoryChunk0010
  decide

def outsideMarkerPartValid5_0010 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 10880
  | _ => True

theorem outsideMarkerPart5_0010 : outsideMarkerPartValid5_0010 outsideHistoryChunk0010 := by
  unfold outsideMarkerPartValid5_0010 outsideHistoryChunk0010
  decide

def outsideMarkerPartValid6_0010 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 11008
  | _ => True

theorem outsideMarkerPart6_0010 : outsideMarkerPartValid6_0010 outsideHistoryChunk0010 := by
  unfold outsideMarkerPartValid6_0010 outsideHistoryChunk0010
  decide

def outsideMarkerPartValid7_0010 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 11136
  | _ => True

theorem outsideMarkerPart7_0010 : outsideMarkerPartValid7_0010 outsideHistoryChunk0010 := by
  unfold outsideMarkerPartValid7_0010 outsideHistoryChunk0010
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
