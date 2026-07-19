import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0062

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0062 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 64000
  | _ => True

theorem outsideMarkerPart4_0062 : outsideMarkerPartValid4_0062 outsideHistoryChunk0062 := by
  unfold outsideMarkerPartValid4_0062 outsideHistoryChunk0062
  decide

def outsideMarkerPartValid5_0062 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 64128
  | _ => True

theorem outsideMarkerPart5_0062 : outsideMarkerPartValid5_0062 outsideHistoryChunk0062 := by
  unfold outsideMarkerPartValid5_0062 outsideHistoryChunk0062
  decide

def outsideMarkerPartValid6_0062 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 64256
  | _ => True

theorem outsideMarkerPart6_0062 : outsideMarkerPartValid6_0062 outsideHistoryChunk0062 := by
  unfold outsideMarkerPartValid6_0062 outsideHistoryChunk0062
  decide

def outsideMarkerPartValid7_0062 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 64384
  | _ => True

theorem outsideMarkerPart7_0062 : outsideMarkerPartValid7_0062 outsideHistoryChunk0062 := by
  unfold outsideMarkerPartValid7_0062 outsideHistoryChunk0062
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
