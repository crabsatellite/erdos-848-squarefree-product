import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0095

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0095 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 97280
  | _ => True

theorem outsideMarkerPart0_0095 : outsideMarkerPartValid0_0095 outsideHistoryChunk0095 := by
  unfold outsideMarkerPartValid0_0095 outsideHistoryChunk0095
  decide

def outsideMarkerPartValid1_0095 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 97408
  | _ => True

theorem outsideMarkerPart1_0095 : outsideMarkerPartValid1_0095 outsideHistoryChunk0095 := by
  unfold outsideMarkerPartValid1_0095 outsideHistoryChunk0095
  decide

def outsideMarkerPartValid2_0095 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 97536
  | _ => True

theorem outsideMarkerPart2_0095 : outsideMarkerPartValid2_0095 outsideHistoryChunk0095 := by
  unfold outsideMarkerPartValid2_0095 outsideHistoryChunk0095
  decide

def outsideMarkerPartValid3_0095 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 97664
  | _ => True

theorem outsideMarkerPart3_0095 : outsideMarkerPartValid3_0095 outsideHistoryChunk0095 := by
  unfold outsideMarkerPartValid3_0095 outsideHistoryChunk0095
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
