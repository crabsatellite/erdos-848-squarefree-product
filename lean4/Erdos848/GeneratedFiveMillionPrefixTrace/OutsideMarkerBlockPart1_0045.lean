import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0045

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0045 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 46592
  | _ => True

theorem outsideMarkerPart4_0045 : outsideMarkerPartValid4_0045 outsideHistoryChunk0045 := by
  unfold outsideMarkerPartValid4_0045 outsideHistoryChunk0045
  decide

def outsideMarkerPartValid5_0045 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 46720
  | _ => True

theorem outsideMarkerPart5_0045 : outsideMarkerPartValid5_0045 outsideHistoryChunk0045 := by
  unfold outsideMarkerPartValid5_0045 outsideHistoryChunk0045
  decide

def outsideMarkerPartValid6_0045 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 46848
  | _ => True

theorem outsideMarkerPart6_0045 : outsideMarkerPartValid6_0045 outsideHistoryChunk0045 := by
  unfold outsideMarkerPartValid6_0045 outsideHistoryChunk0045
  decide

def outsideMarkerPartValid7_0045 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 46976
  | _ => True

theorem outsideMarkerPart7_0045 : outsideMarkerPartValid7_0045 outsideHistoryChunk0045 := by
  unfold outsideMarkerPartValid7_0045 outsideHistoryChunk0045
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
