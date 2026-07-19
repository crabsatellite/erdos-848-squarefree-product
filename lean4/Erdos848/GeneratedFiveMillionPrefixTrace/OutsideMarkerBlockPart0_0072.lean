import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0072

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0072 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 73728
  | _ => True

theorem outsideMarkerPart0_0072 : outsideMarkerPartValid0_0072 outsideHistoryChunk0072 := by
  unfold outsideMarkerPartValid0_0072 outsideHistoryChunk0072
  decide

def outsideMarkerPartValid1_0072 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 73856
  | _ => True

theorem outsideMarkerPart1_0072 : outsideMarkerPartValid1_0072 outsideHistoryChunk0072 := by
  unfold outsideMarkerPartValid1_0072 outsideHistoryChunk0072
  decide

def outsideMarkerPartValid2_0072 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 73984
  | _ => True

theorem outsideMarkerPart2_0072 : outsideMarkerPartValid2_0072 outsideHistoryChunk0072 := by
  unfold outsideMarkerPartValid2_0072 outsideHistoryChunk0072
  decide

def outsideMarkerPartValid3_0072 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 74112
  | _ => True

theorem outsideMarkerPart3_0072 : outsideMarkerPartValid3_0072 outsideHistoryChunk0072 := by
  unfold outsideMarkerPartValid3_0072 outsideHistoryChunk0072
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
