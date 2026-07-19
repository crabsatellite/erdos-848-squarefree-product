import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0103

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0103 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 105472
  | _ => True

theorem outsideMarkerPart0_0103 : outsideMarkerPartValid0_0103 outsideHistoryChunk0103 := by
  unfold outsideMarkerPartValid0_0103 outsideHistoryChunk0103
  decide

def outsideMarkerPartValid1_0103 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 105600
  | _ => True

theorem outsideMarkerPart1_0103 : outsideMarkerPartValid1_0103 outsideHistoryChunk0103 := by
  unfold outsideMarkerPartValid1_0103 outsideHistoryChunk0103
  decide

def outsideMarkerPartValid2_0103 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 105728
  | _ => True

theorem outsideMarkerPart2_0103 : outsideMarkerPartValid2_0103 outsideHistoryChunk0103 := by
  unfold outsideMarkerPartValid2_0103 outsideHistoryChunk0103
  decide

def outsideMarkerPartValid3_0103 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 105856
  | _ => True

theorem outsideMarkerPart3_0103 : outsideMarkerPartValid3_0103 outsideHistoryChunk0103 := by
  unfold outsideMarkerPartValid3_0103 outsideHistoryChunk0103
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
