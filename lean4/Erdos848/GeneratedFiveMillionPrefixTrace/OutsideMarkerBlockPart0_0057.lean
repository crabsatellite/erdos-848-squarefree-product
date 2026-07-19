import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0057

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0057 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 58368
  | _ => True

theorem outsideMarkerPart0_0057 : outsideMarkerPartValid0_0057 outsideHistoryChunk0057 := by
  unfold outsideMarkerPartValid0_0057 outsideHistoryChunk0057
  decide

def outsideMarkerPartValid1_0057 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 58496
  | _ => True

theorem outsideMarkerPart1_0057 : outsideMarkerPartValid1_0057 outsideHistoryChunk0057 := by
  unfold outsideMarkerPartValid1_0057 outsideHistoryChunk0057
  decide

def outsideMarkerPartValid2_0057 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 58624
  | _ => True

theorem outsideMarkerPart2_0057 : outsideMarkerPartValid2_0057 outsideHistoryChunk0057 := by
  unfold outsideMarkerPartValid2_0057 outsideHistoryChunk0057
  decide

def outsideMarkerPartValid3_0057 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 58752
  | _ => True

theorem outsideMarkerPart3_0057 : outsideMarkerPartValid3_0057 outsideHistoryChunk0057 := by
  unfold outsideMarkerPartValid3_0057 outsideHistoryChunk0057
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
