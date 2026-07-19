import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0015

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0015 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 15872
  | _ => True

theorem outsideMarkerPart4_0015 : outsideMarkerPartValid4_0015 outsideHistoryChunk0015 := by
  unfold outsideMarkerPartValid4_0015 outsideHistoryChunk0015
  decide

def outsideMarkerPartValid5_0015 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 16000
  | _ => True

theorem outsideMarkerPart5_0015 : outsideMarkerPartValid5_0015 outsideHistoryChunk0015 := by
  unfold outsideMarkerPartValid5_0015 outsideHistoryChunk0015
  decide

def outsideMarkerPartValid6_0015 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 16128
  | _ => True

theorem outsideMarkerPart6_0015 : outsideMarkerPartValid6_0015 outsideHistoryChunk0015 := by
  unfold outsideMarkerPartValid6_0015 outsideHistoryChunk0015
  decide

def outsideMarkerPartValid7_0015 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 16256
  | _ => True

theorem outsideMarkerPart7_0015 : outsideMarkerPartValid7_0015 outsideHistoryChunk0015 := by
  unfold outsideMarkerPartValid7_0015 outsideHistoryChunk0015
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
