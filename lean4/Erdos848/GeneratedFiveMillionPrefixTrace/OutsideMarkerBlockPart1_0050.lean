import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0050

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0050 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 51712
  | _ => True

theorem outsideMarkerPart4_0050 : outsideMarkerPartValid4_0050 outsideHistoryChunk0050 := by
  unfold outsideMarkerPartValid4_0050 outsideHistoryChunk0050
  decide

def outsideMarkerPartValid5_0050 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 51840
  | _ => True

theorem outsideMarkerPart5_0050 : outsideMarkerPartValid5_0050 outsideHistoryChunk0050 := by
  unfold outsideMarkerPartValid5_0050 outsideHistoryChunk0050
  decide

def outsideMarkerPartValid6_0050 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 51968
  | _ => True

theorem outsideMarkerPart6_0050 : outsideMarkerPartValid6_0050 outsideHistoryChunk0050 := by
  unfold outsideMarkerPartValid6_0050 outsideHistoryChunk0050
  decide

def outsideMarkerPartValid7_0050 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 52096
  | _ => True

theorem outsideMarkerPart7_0050 : outsideMarkerPartValid7_0050 outsideHistoryChunk0050 := by
  unfold outsideMarkerPartValid7_0050 outsideHistoryChunk0050
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
