import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0104

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0104 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 106496
  | _ => True

theorem outsideMarkerPart0_0104 : outsideMarkerPartValid0_0104 outsideHistoryChunk0104 := by
  unfold outsideMarkerPartValid0_0104 outsideHistoryChunk0104
  decide

def outsideMarkerPartValid1_0104 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 106624
  | _ => True

theorem outsideMarkerPart1_0104 : outsideMarkerPartValid1_0104 outsideHistoryChunk0104 := by
  unfold outsideMarkerPartValid1_0104 outsideHistoryChunk0104
  decide

def outsideMarkerPartValid2_0104 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 106752
  | _ => True

theorem outsideMarkerPart2_0104 : outsideMarkerPartValid2_0104 outsideHistoryChunk0104 := by
  unfold outsideMarkerPartValid2_0104 outsideHistoryChunk0104
  decide

def outsideMarkerPartValid3_0104 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 106880
  | _ => True

theorem outsideMarkerPart3_0104 : outsideMarkerPartValid3_0104 outsideHistoryChunk0104 := by
  unfold outsideMarkerPartValid3_0104 outsideHistoryChunk0104
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
