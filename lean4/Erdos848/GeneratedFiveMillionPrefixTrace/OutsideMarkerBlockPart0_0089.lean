import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0089

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0089 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 91136
  | _ => True

theorem outsideMarkerPart0_0089 : outsideMarkerPartValid0_0089 outsideHistoryChunk0089 := by
  unfold outsideMarkerPartValid0_0089 outsideHistoryChunk0089
  decide

def outsideMarkerPartValid1_0089 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 91264
  | _ => True

theorem outsideMarkerPart1_0089 : outsideMarkerPartValid1_0089 outsideHistoryChunk0089 := by
  unfold outsideMarkerPartValid1_0089 outsideHistoryChunk0089
  decide

def outsideMarkerPartValid2_0089 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 91392
  | _ => True

theorem outsideMarkerPart2_0089 : outsideMarkerPartValid2_0089 outsideHistoryChunk0089 := by
  unfold outsideMarkerPartValid2_0089 outsideHistoryChunk0089
  decide

def outsideMarkerPartValid3_0089 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 91520
  | _ => True

theorem outsideMarkerPart3_0089 : outsideMarkerPartValid3_0089 outsideHistoryChunk0089 := by
  unfold outsideMarkerPartValid3_0089 outsideHistoryChunk0089
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
