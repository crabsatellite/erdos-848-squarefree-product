import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0032

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0032 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 33280
  | _ => True

theorem outsideMarkerPart4_0032 : outsideMarkerPartValid4_0032 outsideHistoryChunk0032 := by
  unfold outsideMarkerPartValid4_0032 outsideHistoryChunk0032
  decide

def outsideMarkerPartValid5_0032 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 33408
  | _ => True

theorem outsideMarkerPart5_0032 : outsideMarkerPartValid5_0032 outsideHistoryChunk0032 := by
  unfold outsideMarkerPartValid5_0032 outsideHistoryChunk0032
  decide

def outsideMarkerPartValid6_0032 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 33536
  | _ => True

theorem outsideMarkerPart6_0032 : outsideMarkerPartValid6_0032 outsideHistoryChunk0032 := by
  unfold outsideMarkerPartValid6_0032 outsideHistoryChunk0032
  decide

def outsideMarkerPartValid7_0032 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 33664
  | _ => True

theorem outsideMarkerPart7_0032 : outsideMarkerPartValid7_0032 outsideHistoryChunk0032 := by
  unfold outsideMarkerPartValid7_0032 outsideHistoryChunk0032
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
