import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0002

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0002 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 2560
  | _ => True

theorem outsideMarkerPart4_0002 : outsideMarkerPartValid4_0002 outsideHistoryChunk0002 := by
  unfold outsideMarkerPartValid4_0002 outsideHistoryChunk0002
  decide

def outsideMarkerPartValid5_0002 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 2688
  | _ => True

theorem outsideMarkerPart5_0002 : outsideMarkerPartValid5_0002 outsideHistoryChunk0002 := by
  unfold outsideMarkerPartValid5_0002 outsideHistoryChunk0002
  decide

def outsideMarkerPartValid6_0002 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 2816
  | _ => True

theorem outsideMarkerPart6_0002 : outsideMarkerPartValid6_0002 outsideHistoryChunk0002 := by
  unfold outsideMarkerPartValid6_0002 outsideHistoryChunk0002
  decide

def outsideMarkerPartValid7_0002 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 2944
  | _ => True

theorem outsideMarkerPart7_0002 : outsideMarkerPartValid7_0002 outsideHistoryChunk0002 := by
  unfold outsideMarkerPartValid7_0002 outsideHistoryChunk0002
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
