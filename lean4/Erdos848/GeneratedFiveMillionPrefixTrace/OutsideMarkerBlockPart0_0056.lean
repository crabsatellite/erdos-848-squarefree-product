import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0056

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0056 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 57344
  | _ => True

theorem outsideMarkerPart0_0056 : outsideMarkerPartValid0_0056 outsideHistoryChunk0056 := by
  unfold outsideMarkerPartValid0_0056 outsideHistoryChunk0056
  decide

def outsideMarkerPartValid1_0056 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 57472
  | _ => True

theorem outsideMarkerPart1_0056 : outsideMarkerPartValid1_0056 outsideHistoryChunk0056 := by
  unfold outsideMarkerPartValid1_0056 outsideHistoryChunk0056
  decide

def outsideMarkerPartValid2_0056 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 57600
  | _ => True

theorem outsideMarkerPart2_0056 : outsideMarkerPartValid2_0056 outsideHistoryChunk0056 := by
  unfold outsideMarkerPartValid2_0056 outsideHistoryChunk0056
  decide

def outsideMarkerPartValid3_0056 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 57728
  | _ => True

theorem outsideMarkerPart3_0056 : outsideMarkerPartValid3_0056 outsideHistoryChunk0056 := by
  unfold outsideMarkerPartValid3_0056 outsideHistoryChunk0056
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
