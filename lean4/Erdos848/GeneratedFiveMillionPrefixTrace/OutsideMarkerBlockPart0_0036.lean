import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0036

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0036 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 36864
  | _ => True

theorem outsideMarkerPart0_0036 : outsideMarkerPartValid0_0036 outsideHistoryChunk0036 := by
  unfold outsideMarkerPartValid0_0036 outsideHistoryChunk0036
  decide

def outsideMarkerPartValid1_0036 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 36992
  | _ => True

theorem outsideMarkerPart1_0036 : outsideMarkerPartValid1_0036 outsideHistoryChunk0036 := by
  unfold outsideMarkerPartValid1_0036 outsideHistoryChunk0036
  decide

def outsideMarkerPartValid2_0036 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 37120
  | _ => True

theorem outsideMarkerPart2_0036 : outsideMarkerPartValid2_0036 outsideHistoryChunk0036 := by
  unfold outsideMarkerPartValid2_0036 outsideHistoryChunk0036
  decide

def outsideMarkerPartValid3_0036 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 37248
  | _ => True

theorem outsideMarkerPart3_0036 : outsideMarkerPartValid3_0036 outsideHistoryChunk0036 := by
  unfold outsideMarkerPartValid3_0036 outsideHistoryChunk0036
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
