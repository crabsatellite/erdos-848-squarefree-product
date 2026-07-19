import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0041

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0041 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 42496
  | _ => True

theorem outsideMarkerPart4_0041 : outsideMarkerPartValid4_0041 outsideHistoryChunk0041 := by
  unfold outsideMarkerPartValid4_0041 outsideHistoryChunk0041
  decide

def outsideMarkerPartValid5_0041 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 42624
  | _ => True

theorem outsideMarkerPart5_0041 : outsideMarkerPartValid5_0041 outsideHistoryChunk0041 := by
  unfold outsideMarkerPartValid5_0041 outsideHistoryChunk0041
  decide

def outsideMarkerPartValid6_0041 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 42752
  | _ => True

theorem outsideMarkerPart6_0041 : outsideMarkerPartValid6_0041 outsideHistoryChunk0041 := by
  unfold outsideMarkerPartValid6_0041 outsideHistoryChunk0041
  decide

def outsideMarkerPartValid7_0041 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 42880
  | _ => True

theorem outsideMarkerPart7_0041 : outsideMarkerPartValid7_0041 outsideHistoryChunk0041 := by
  unfold outsideMarkerPartValid7_0041 outsideHistoryChunk0041
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
