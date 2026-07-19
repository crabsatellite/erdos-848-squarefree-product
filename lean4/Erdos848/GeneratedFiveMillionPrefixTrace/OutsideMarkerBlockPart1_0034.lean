import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0034

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0034 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 35328
  | _ => True

theorem outsideMarkerPart4_0034 : outsideMarkerPartValid4_0034 outsideHistoryChunk0034 := by
  unfold outsideMarkerPartValid4_0034 outsideHistoryChunk0034
  decide

def outsideMarkerPartValid5_0034 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 35456
  | _ => True

theorem outsideMarkerPart5_0034 : outsideMarkerPartValid5_0034 outsideHistoryChunk0034 := by
  unfold outsideMarkerPartValid5_0034 outsideHistoryChunk0034
  decide

def outsideMarkerPartValid6_0034 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 35584
  | _ => True

theorem outsideMarkerPart6_0034 : outsideMarkerPartValid6_0034 outsideHistoryChunk0034 := by
  unfold outsideMarkerPartValid6_0034 outsideHistoryChunk0034
  decide

def outsideMarkerPartValid7_0034 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 35712
  | _ => True

theorem outsideMarkerPart7_0034 : outsideMarkerPartValid7_0034 outsideHistoryChunk0034 := by
  unfold outsideMarkerPartValid7_0034 outsideHistoryChunk0034
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
