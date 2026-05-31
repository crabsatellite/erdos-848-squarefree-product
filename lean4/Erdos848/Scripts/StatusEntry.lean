import Erdos848.MainChain

def main : IO UInt32 :=
  ChainAudit.Status.runAudit Erdos848.MainChain.config
