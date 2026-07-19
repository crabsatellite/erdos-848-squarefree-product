import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0020

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0020 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 20480
  | _ => True

theorem outsideMarkerPart0_0020 : outsideMarkerPartValid0_0020 outsideHistoryChunk0020 := by
  unfold outsideMarkerPartValid0_0020 outsideHistoryChunk0020
  decide

def outsideMarkerPartValid1_0020 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 20608
  | _ => True

theorem outsideMarkerPart1_0020 : outsideMarkerPartValid1_0020 outsideHistoryChunk0020 := by
  unfold outsideMarkerPartValid1_0020 outsideHistoryChunk0020
  decide

def outsideMarkerPartValid2_0020 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 20736
  | _ => True

theorem outsideMarkerPart2_0020 : outsideMarkerPartValid2_0020 outsideHistoryChunk0020 := by
  unfold outsideMarkerPartValid2_0020 outsideHistoryChunk0020
  decide

def outsideMarkerPartValid3_0020 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 20864
  | _ => True

theorem outsideMarkerPart3_0020 : outsideMarkerPartValid3_0020 outsideHistoryChunk0020 := by
  unfold outsideMarkerPartValid3_0020 outsideHistoryChunk0020
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
