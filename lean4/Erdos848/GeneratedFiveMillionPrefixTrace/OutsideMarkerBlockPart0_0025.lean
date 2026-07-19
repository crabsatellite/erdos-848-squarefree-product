import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0025

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0025 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 25600
  | _ => True

theorem outsideMarkerPart0_0025 : outsideMarkerPartValid0_0025 outsideHistoryChunk0025 := by
  unfold outsideMarkerPartValid0_0025 outsideHistoryChunk0025
  decide

def outsideMarkerPartValid1_0025 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 25728
  | _ => True

theorem outsideMarkerPart1_0025 : outsideMarkerPartValid1_0025 outsideHistoryChunk0025 := by
  unfold outsideMarkerPartValid1_0025 outsideHistoryChunk0025
  decide

def outsideMarkerPartValid2_0025 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 25856
  | _ => True

theorem outsideMarkerPart2_0025 : outsideMarkerPartValid2_0025 outsideHistoryChunk0025 := by
  unfold outsideMarkerPartValid2_0025 outsideHistoryChunk0025
  decide

def outsideMarkerPartValid3_0025 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 25984
  | _ => True

theorem outsideMarkerPart3_0025 : outsideMarkerPartValid3_0025 outsideHistoryChunk0025 := by
  unfold outsideMarkerPartValid3_0025 outsideHistoryChunk0025
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
