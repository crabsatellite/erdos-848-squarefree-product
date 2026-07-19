import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0121

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0121 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 123904
  | _ => True

theorem outsideMarkerPart0_0121 : outsideMarkerPartValid0_0121 outsideHistoryChunk0121 := by
  unfold outsideMarkerPartValid0_0121 outsideHistoryChunk0121
  decide

def outsideMarkerPartValid1_0121 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 124032
  | _ => True

theorem outsideMarkerPart1_0121 : outsideMarkerPartValid1_0121 outsideHistoryChunk0121 := by
  unfold outsideMarkerPartValid1_0121 outsideHistoryChunk0121
  decide

def outsideMarkerPartValid2_0121 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 124160
  | _ => True

theorem outsideMarkerPart2_0121 : outsideMarkerPartValid2_0121 outsideHistoryChunk0121 := by
  unfold outsideMarkerPartValid2_0121 outsideHistoryChunk0121
  decide

def outsideMarkerPartValid3_0121 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 124288
  | _ => True

theorem outsideMarkerPart3_0121 : outsideMarkerPartValid3_0121 outsideHistoryChunk0121 := by
  unfold outsideMarkerPartValid3_0121 outsideHistoryChunk0121
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
