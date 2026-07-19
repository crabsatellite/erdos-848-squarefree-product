import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0021

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0021 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 21504
  | _ => True

theorem outsideMarkerPart0_0021 : outsideMarkerPartValid0_0021 outsideHistoryChunk0021 := by
  unfold outsideMarkerPartValid0_0021 outsideHistoryChunk0021
  decide

def outsideMarkerPartValid1_0021 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 21632
  | _ => True

theorem outsideMarkerPart1_0021 : outsideMarkerPartValid1_0021 outsideHistoryChunk0021 := by
  unfold outsideMarkerPartValid1_0021 outsideHistoryChunk0021
  decide

def outsideMarkerPartValid2_0021 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 21760
  | _ => True

theorem outsideMarkerPart2_0021 : outsideMarkerPartValid2_0021 outsideHistoryChunk0021 := by
  unfold outsideMarkerPartValid2_0021 outsideHistoryChunk0021
  decide

def outsideMarkerPartValid3_0021 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 21888
  | _ => True

theorem outsideMarkerPart3_0021 : outsideMarkerPartValid3_0021 outsideHistoryChunk0021 := by
  unfold outsideMarkerPartValid3_0021 outsideHistoryChunk0021
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
