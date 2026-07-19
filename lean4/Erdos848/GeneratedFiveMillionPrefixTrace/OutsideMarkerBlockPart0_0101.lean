import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0101

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0101 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 103424
  | _ => True

theorem outsideMarkerPart0_0101 : outsideMarkerPartValid0_0101 outsideHistoryChunk0101 := by
  unfold outsideMarkerPartValid0_0101 outsideHistoryChunk0101
  decide

def outsideMarkerPartValid1_0101 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 103552
  | _ => True

theorem outsideMarkerPart1_0101 : outsideMarkerPartValid1_0101 outsideHistoryChunk0101 := by
  unfold outsideMarkerPartValid1_0101 outsideHistoryChunk0101
  decide

def outsideMarkerPartValid2_0101 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 103680
  | _ => True

theorem outsideMarkerPart2_0101 : outsideMarkerPartValid2_0101 outsideHistoryChunk0101 := by
  unfold outsideMarkerPartValid2_0101 outsideHistoryChunk0101
  decide

def outsideMarkerPartValid3_0101 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 103808
  | _ => True

theorem outsideMarkerPart3_0101 : outsideMarkerPartValid3_0101 outsideHistoryChunk0101 := by
  unfold outsideMarkerPartValid3_0101 outsideHistoryChunk0101
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
