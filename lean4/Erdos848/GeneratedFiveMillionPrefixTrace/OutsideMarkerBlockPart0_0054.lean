import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0054

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0054 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 55296
  | _ => True

theorem outsideMarkerPart0_0054 : outsideMarkerPartValid0_0054 outsideHistoryChunk0054 := by
  unfold outsideMarkerPartValid0_0054 outsideHistoryChunk0054
  decide

def outsideMarkerPartValid1_0054 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 55424
  | _ => True

theorem outsideMarkerPart1_0054 : outsideMarkerPartValid1_0054 outsideHistoryChunk0054 := by
  unfold outsideMarkerPartValid1_0054 outsideHistoryChunk0054
  decide

def outsideMarkerPartValid2_0054 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 55552
  | _ => True

theorem outsideMarkerPart2_0054 : outsideMarkerPartValid2_0054 outsideHistoryChunk0054 := by
  unfold outsideMarkerPartValid2_0054 outsideHistoryChunk0054
  decide

def outsideMarkerPartValid3_0054 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 55680
  | _ => True

theorem outsideMarkerPart3_0054 : outsideMarkerPartValid3_0054 outsideHistoryChunk0054 := by
  unfold outsideMarkerPartValid3_0054 outsideHistoryChunk0054
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
