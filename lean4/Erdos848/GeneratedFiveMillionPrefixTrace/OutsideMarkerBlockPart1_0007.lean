import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0007

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0007 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 7680
  | _ => True

theorem outsideMarkerPart4_0007 : outsideMarkerPartValid4_0007 outsideHistoryChunk0007 := by
  unfold outsideMarkerPartValid4_0007 outsideHistoryChunk0007
  decide

def outsideMarkerPartValid5_0007 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 7808
  | _ => True

theorem outsideMarkerPart5_0007 : outsideMarkerPartValid5_0007 outsideHistoryChunk0007 := by
  unfold outsideMarkerPartValid5_0007 outsideHistoryChunk0007
  decide

def outsideMarkerPartValid6_0007 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 7936
  | _ => True

theorem outsideMarkerPart6_0007 : outsideMarkerPartValid6_0007 outsideHistoryChunk0007 := by
  unfold outsideMarkerPartValid6_0007 outsideHistoryChunk0007
  decide

def outsideMarkerPartValid7_0007 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 8064
  | _ => True

theorem outsideMarkerPart7_0007 : outsideMarkerPartValid7_0007 outsideHistoryChunk0007 := by
  unfold outsideMarkerPartValid7_0007 outsideHistoryChunk0007
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
