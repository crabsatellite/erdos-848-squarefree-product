import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0070

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0070 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 71680
  | _ => True

theorem outsideMarkerPart0_0070 : outsideMarkerPartValid0_0070 outsideHistoryChunk0070 := by
  unfold outsideMarkerPartValid0_0070 outsideHistoryChunk0070
  decide

def outsideMarkerPartValid1_0070 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 71808
  | _ => True

theorem outsideMarkerPart1_0070 : outsideMarkerPartValid1_0070 outsideHistoryChunk0070 := by
  unfold outsideMarkerPartValid1_0070 outsideHistoryChunk0070
  decide

def outsideMarkerPartValid2_0070 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 71936
  | _ => True

theorem outsideMarkerPart2_0070 : outsideMarkerPartValid2_0070 outsideHistoryChunk0070 := by
  unfold outsideMarkerPartValid2_0070 outsideHistoryChunk0070
  decide

def outsideMarkerPartValid3_0070 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 72064
  | _ => True

theorem outsideMarkerPart3_0070 : outsideMarkerPartValid3_0070 outsideHistoryChunk0070 := by
  unfold outsideMarkerPartValid3_0070 outsideHistoryChunk0070
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
