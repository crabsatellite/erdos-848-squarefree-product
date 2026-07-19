import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0079

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0079 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 81408
  | _ => True

theorem outsideMarkerPart4_0079 : outsideMarkerPartValid4_0079 outsideHistoryChunk0079 := by
  unfold outsideMarkerPartValid4_0079 outsideHistoryChunk0079
  decide

def outsideMarkerPartValid5_0079 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 81536
  | _ => True

theorem outsideMarkerPart5_0079 : outsideMarkerPartValid5_0079 outsideHistoryChunk0079 := by
  unfold outsideMarkerPartValid5_0079 outsideHistoryChunk0079
  decide

def outsideMarkerPartValid6_0079 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 81664
  | _ => True

theorem outsideMarkerPart6_0079 : outsideMarkerPartValid6_0079 outsideHistoryChunk0079 := by
  unfold outsideMarkerPartValid6_0079 outsideHistoryChunk0079
  decide

def outsideMarkerPartValid7_0079 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 81792
  | _ => True

theorem outsideMarkerPart7_0079 : outsideMarkerPartValid7_0079 outsideHistoryChunk0079 := by
  unfold outsideMarkerPartValid7_0079 outsideHistoryChunk0079
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
