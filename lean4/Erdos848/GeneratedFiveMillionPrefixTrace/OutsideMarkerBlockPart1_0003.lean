import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0003

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0003 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 3584
  | _ => True

theorem outsideMarkerPart4_0003 : outsideMarkerPartValid4_0003 outsideHistoryChunk0003 := by
  unfold outsideMarkerPartValid4_0003 outsideHistoryChunk0003
  decide

def outsideMarkerPartValid5_0003 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 3712
  | _ => True

theorem outsideMarkerPart5_0003 : outsideMarkerPartValid5_0003 outsideHistoryChunk0003 := by
  unfold outsideMarkerPartValid5_0003 outsideHistoryChunk0003
  decide

def outsideMarkerPartValid6_0003 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 3840
  | _ => True

theorem outsideMarkerPart6_0003 : outsideMarkerPartValid6_0003 outsideHistoryChunk0003 := by
  unfold outsideMarkerPartValid6_0003 outsideHistoryChunk0003
  decide

def outsideMarkerPartValid7_0003 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 3968
  | _ => True

theorem outsideMarkerPart7_0003 : outsideMarkerPartValid7_0003 outsideHistoryChunk0003 := by
  unfold outsideMarkerPartValid7_0003 outsideHistoryChunk0003
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
