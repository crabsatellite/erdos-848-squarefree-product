import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0014

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0014 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 14848
  | _ => True

theorem outsideMarkerPart4_0014 : outsideMarkerPartValid4_0014 outsideHistoryChunk0014 := by
  unfold outsideMarkerPartValid4_0014 outsideHistoryChunk0014
  decide

def outsideMarkerPartValid5_0014 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 14976
  | _ => True

theorem outsideMarkerPart5_0014 : outsideMarkerPartValid5_0014 outsideHistoryChunk0014 := by
  unfold outsideMarkerPartValid5_0014 outsideHistoryChunk0014
  decide

def outsideMarkerPartValid6_0014 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 15104
  | _ => True

theorem outsideMarkerPart6_0014 : outsideMarkerPartValid6_0014 outsideHistoryChunk0014 := by
  unfold outsideMarkerPartValid6_0014 outsideHistoryChunk0014
  decide

def outsideMarkerPartValid7_0014 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 15232
  | _ => True

theorem outsideMarkerPart7_0014 : outsideMarkerPartValid7_0014 outsideHistoryChunk0014 := by
  unfold outsideMarkerPartValid7_0014 outsideHistoryChunk0014
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
