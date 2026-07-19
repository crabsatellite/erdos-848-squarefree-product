import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0109

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0109 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 111616
  | _ => True

theorem outsideMarkerPart0_0109 : outsideMarkerPartValid0_0109 outsideHistoryChunk0109 := by
  unfold outsideMarkerPartValid0_0109 outsideHistoryChunk0109
  decide

def outsideMarkerPartValid1_0109 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 111744
  | _ => True

theorem outsideMarkerPart1_0109 : outsideMarkerPartValid1_0109 outsideHistoryChunk0109 := by
  unfold outsideMarkerPartValid1_0109 outsideHistoryChunk0109
  decide

def outsideMarkerPartValid2_0109 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 111872
  | _ => True

theorem outsideMarkerPart2_0109 : outsideMarkerPartValid2_0109 outsideHistoryChunk0109 := by
  unfold outsideMarkerPartValid2_0109 outsideHistoryChunk0109
  decide

def outsideMarkerPartValid3_0109 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 112000
  | _ => True

theorem outsideMarkerPart3_0109 : outsideMarkerPartValid3_0109 outsideHistoryChunk0109 := by
  unfold outsideMarkerPartValid3_0109 outsideHistoryChunk0109
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
