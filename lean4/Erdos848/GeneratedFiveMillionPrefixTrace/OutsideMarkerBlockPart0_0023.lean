import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0023

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0023 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 23552
  | _ => True

theorem outsideMarkerPart0_0023 : outsideMarkerPartValid0_0023 outsideHistoryChunk0023 := by
  unfold outsideMarkerPartValid0_0023 outsideHistoryChunk0023
  decide

def outsideMarkerPartValid1_0023 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 23680
  | _ => True

theorem outsideMarkerPart1_0023 : outsideMarkerPartValid1_0023 outsideHistoryChunk0023 := by
  unfold outsideMarkerPartValid1_0023 outsideHistoryChunk0023
  decide

def outsideMarkerPartValid2_0023 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 23808
  | _ => True

theorem outsideMarkerPart2_0023 : outsideMarkerPartValid2_0023 outsideHistoryChunk0023 := by
  unfold outsideMarkerPartValid2_0023 outsideHistoryChunk0023
  decide

def outsideMarkerPartValid3_0023 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 23936
  | _ => True

theorem outsideMarkerPart3_0023 : outsideMarkerPartValid3_0023 outsideHistoryChunk0023 := by
  unfold outsideMarkerPartValid3_0023 outsideHistoryChunk0023
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
