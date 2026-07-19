import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0060

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0060 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 61440
  | _ => True

theorem outsideMarkerPart0_0060 : outsideMarkerPartValid0_0060 outsideHistoryChunk0060 := by
  unfold outsideMarkerPartValid0_0060 outsideHistoryChunk0060
  decide

def outsideMarkerPartValid1_0060 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 61568
  | _ => True

theorem outsideMarkerPart1_0060 : outsideMarkerPartValid1_0060 outsideHistoryChunk0060 := by
  unfold outsideMarkerPartValid1_0060 outsideHistoryChunk0060
  decide

def outsideMarkerPartValid2_0060 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 61696
  | _ => True

theorem outsideMarkerPart2_0060 : outsideMarkerPartValid2_0060 outsideHistoryChunk0060 := by
  unfold outsideMarkerPartValid2_0060 outsideHistoryChunk0060
  decide

def outsideMarkerPartValid3_0060 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 61824
  | _ => True

theorem outsideMarkerPart3_0060 : outsideMarkerPartValid3_0060 outsideHistoryChunk0060 := by
  unfold outsideMarkerPartValid3_0060 outsideHistoryChunk0060
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
