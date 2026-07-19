import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0004

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0004 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 4608
  | _ => True

theorem outsideMarkerPart4_0004 : outsideMarkerPartValid4_0004 outsideHistoryChunk0004 := by
  unfold outsideMarkerPartValid4_0004 outsideHistoryChunk0004
  decide

def outsideMarkerPartValid5_0004 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 4736
  | _ => True

theorem outsideMarkerPart5_0004 : outsideMarkerPartValid5_0004 outsideHistoryChunk0004 := by
  unfold outsideMarkerPartValid5_0004 outsideHistoryChunk0004
  decide

def outsideMarkerPartValid6_0004 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 4864
  | _ => True

theorem outsideMarkerPart6_0004 : outsideMarkerPartValid6_0004 outsideHistoryChunk0004 := by
  unfold outsideMarkerPartValid6_0004 outsideHistoryChunk0004
  decide

def outsideMarkerPartValid7_0004 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 4992
  | _ => True

theorem outsideMarkerPart7_0004 : outsideMarkerPartValid7_0004 outsideHistoryChunk0004 := by
  unfold outsideMarkerPartValid7_0004 outsideHistoryChunk0004
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
