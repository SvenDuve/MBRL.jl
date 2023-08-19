# MBRL

[![Build Status](https://github.com/SvenDuve/MBRL.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/SvenDuve/MBRL.jl/actions/workflows/CI.yml?query=branch%3Amain)


# Model Based Reinforcement Learning 

This module has only one function call:

```
MBRLAgent(Models, Environments, AgentParameter, ModelParameter)
```

This function combines model free agents with model learning. 

This module depends mainly on:

- [RLTypes](https://github.com/SvenDuve/RLTypes.jl)
- [DDPG](https://github.com/SvenDuve/DDPG.jl)
- [DQN](https://github.com/SvenDuve/DQN.jl)
- [NODEDynamics](https://github.com/SvenDuve/NODEDynamics.jl)
- [ODERNNDynamics](https://github.com/SvenDuve/ODERNNDynamics.jl)
- [Conda](https://github.com/JuliaPy/Conda.jl)
- [PyCall](https://github.com/JuliaPy/PyCall.jl)
- [Gymnasium](https://github.com/SvenDuve/Gymnasium), this is a slightly adapted version. The original package can be found [here](https://github.com/Farama-Foundation/Gymnasium)

# Installation

In the Julia REPL, run

´´´
using Pkg
Pkg.add("Conda")
Pkg.add("PyCall")
Pkg.add(url="https://github.com/SvenDuve/MBRL.jl")
Pkg.add(url="https://github.com/SvenDuve/RLTypes.jl")
```

Then again within julia,

```julia
using Conda
using PyCall
Conda.pip_interop(true)
Conda.add("wheel")
Conda.add("box2d-py")
Conda.add("pygame")
Conda.pip("install", "git+https://github.com/SvenDuve/Gymnasium")
```


Bring package into scope with

```julia
using MBRL
```

## Example usage


Once the above is installed, the following code can be used to train an agent:

```julia
using MBRL
using RLTypes
MBRLAgent(NODEModel(), Pendulum(), AgentParameter(training_episodes=500), ModelParameter())
```

Caution, this code will take a long time to run.
