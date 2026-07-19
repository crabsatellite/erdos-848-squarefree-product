import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0107

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0107 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 109568
  | _ => True

theorem outsideMarkerPart0_0107 : outsideMarkerPartValid0_0107 outsideHistoryChunk0107 := by
  unfold outsideMarkerPartValid0_0107 outsideHistoryChunk0107
  decide

def outsideMarkerPartValid1_0107 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 109696
  | _ => True

theorem outsideMarkerPart1_0107 : outsideMarkerPartValid1_0107 outsideHistoryChunk0107 := by
  unfold outsideMarkerPartValid1_0107 outsideHistoryChunk0107
  decide

def outsideMarkerPartValid2_0107 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 109824
  | _ => True

theorem outsideMarkerPart2_0107 : outsideMarkerPartValid2_0107 outsideHistoryChunk0107 := by
  unfold outsideMarkerPartValid2_0107 outsideHistoryChunk0107
  decide

def outsideMarkerPartValid3_0107 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 109952
  | _ => True

theorem outsideMarkerPart3_0107 : outsideMarkerPartValid3_0107 outsideHistoryChunk0107 := by
  unfold outsideMarkerPartValid3_0107 outsideHistoryChunk0107
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
