import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0033

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0033 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 33792
  | _ => True

theorem outsideMarkerPart0_0033 : outsideMarkerPartValid0_0033 outsideHistoryChunk0033 := by
  unfold outsideMarkerPartValid0_0033 outsideHistoryChunk0033
  decide

def outsideMarkerPartValid1_0033 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 33920
  | _ => True

theorem outsideMarkerPart1_0033 : outsideMarkerPartValid1_0033 outsideHistoryChunk0033 := by
  unfold outsideMarkerPartValid1_0033 outsideHistoryChunk0033
  decide

def outsideMarkerPartValid2_0033 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 34048
  | _ => True

theorem outsideMarkerPart2_0033 : outsideMarkerPartValid2_0033 outsideHistoryChunk0033 := by
  unfold outsideMarkerPartValid2_0033 outsideHistoryChunk0033
  decide

def outsideMarkerPartValid3_0033 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 34176
  | _ => True

theorem outsideMarkerPart3_0033 : outsideMarkerPartValid3_0033 outsideHistoryChunk0033 := by
  unfold outsideMarkerPartValid3_0033 outsideHistoryChunk0033
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
