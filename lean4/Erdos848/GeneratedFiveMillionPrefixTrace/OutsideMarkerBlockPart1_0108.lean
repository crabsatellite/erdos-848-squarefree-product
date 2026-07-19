import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0108

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0108 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 111104
  | _ => True

theorem outsideMarkerPart4_0108 : outsideMarkerPartValid4_0108 outsideHistoryChunk0108 := by
  unfold outsideMarkerPartValid4_0108 outsideHistoryChunk0108
  decide

def outsideMarkerPartValid5_0108 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 111232
  | _ => True

theorem outsideMarkerPart5_0108 : outsideMarkerPartValid5_0108 outsideHistoryChunk0108 := by
  unfold outsideMarkerPartValid5_0108 outsideHistoryChunk0108
  decide

def outsideMarkerPartValid6_0108 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 111360
  | _ => True

theorem outsideMarkerPart6_0108 : outsideMarkerPartValid6_0108 outsideHistoryChunk0108 := by
  unfold outsideMarkerPartValid6_0108 outsideHistoryChunk0108
  decide

def outsideMarkerPartValid7_0108 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 111488
  | _ => True

theorem outsideMarkerPart7_0108 : outsideMarkerPartValid7_0108 outsideHistoryChunk0108 := by
  unfold outsideMarkerPartValid7_0108 outsideHistoryChunk0108
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
