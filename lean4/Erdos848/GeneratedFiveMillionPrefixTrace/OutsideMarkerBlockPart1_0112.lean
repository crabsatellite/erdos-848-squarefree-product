import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0112

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0112 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 115200
  | _ => True

theorem outsideMarkerPart4_0112 : outsideMarkerPartValid4_0112 outsideHistoryChunk0112 := by
  unfold outsideMarkerPartValid4_0112 outsideHistoryChunk0112
  decide

def outsideMarkerPartValid5_0112 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 115328
  | _ => True

theorem outsideMarkerPart5_0112 : outsideMarkerPartValid5_0112 outsideHistoryChunk0112 := by
  unfold outsideMarkerPartValid5_0112 outsideHistoryChunk0112
  decide

def outsideMarkerPartValid6_0112 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 115456
  | _ => True

theorem outsideMarkerPart6_0112 : outsideMarkerPartValid6_0112 outsideHistoryChunk0112 := by
  unfold outsideMarkerPartValid6_0112 outsideHistoryChunk0112
  decide

def outsideMarkerPartValid7_0112 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 115584
  | _ => True

theorem outsideMarkerPart7_0112 : outsideMarkerPartValid7_0112 outsideHistoryChunk0112 := by
  unfold outsideMarkerPartValid7_0112 outsideHistoryChunk0112
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
