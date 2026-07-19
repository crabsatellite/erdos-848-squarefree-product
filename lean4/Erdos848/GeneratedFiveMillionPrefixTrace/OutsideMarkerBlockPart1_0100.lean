import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0100

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0100 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 102912
  | _ => True

theorem outsideMarkerPart4_0100 : outsideMarkerPartValid4_0100 outsideHistoryChunk0100 := by
  unfold outsideMarkerPartValid4_0100 outsideHistoryChunk0100
  decide

def outsideMarkerPartValid5_0100 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 103040
  | _ => True

theorem outsideMarkerPart5_0100 : outsideMarkerPartValid5_0100 outsideHistoryChunk0100 := by
  unfold outsideMarkerPartValid5_0100 outsideHistoryChunk0100
  decide

def outsideMarkerPartValid6_0100 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 103168
  | _ => True

theorem outsideMarkerPart6_0100 : outsideMarkerPartValid6_0100 outsideHistoryChunk0100 := by
  unfold outsideMarkerPartValid6_0100 outsideHistoryChunk0100
  decide

def outsideMarkerPartValid7_0100 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 103296
  | _ => True

theorem outsideMarkerPart7_0100 : outsideMarkerPartValid7_0100 outsideHistoryChunk0100 := by
  unfold outsideMarkerPartValid7_0100 outsideHistoryChunk0100
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
