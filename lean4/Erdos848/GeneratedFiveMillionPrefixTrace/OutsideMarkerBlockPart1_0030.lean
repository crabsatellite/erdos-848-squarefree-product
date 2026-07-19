import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0030

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0030 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 31232
  | _ => True

theorem outsideMarkerPart4_0030 : outsideMarkerPartValid4_0030 outsideHistoryChunk0030 := by
  unfold outsideMarkerPartValid4_0030 outsideHistoryChunk0030
  decide

def outsideMarkerPartValid5_0030 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 31360
  | _ => True

theorem outsideMarkerPart5_0030 : outsideMarkerPartValid5_0030 outsideHistoryChunk0030 := by
  unfold outsideMarkerPartValid5_0030 outsideHistoryChunk0030
  decide

def outsideMarkerPartValid6_0030 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 31488
  | _ => True

theorem outsideMarkerPart6_0030 : outsideMarkerPartValid6_0030 outsideHistoryChunk0030 := by
  unfold outsideMarkerPartValid6_0030 outsideHistoryChunk0030
  decide

def outsideMarkerPartValid7_0030 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 31616
  | _ => True

theorem outsideMarkerPart7_0030 : outsideMarkerPartValid7_0030 outsideHistoryChunk0030 := by
  unfold outsideMarkerPartValid7_0030 outsideHistoryChunk0030
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
