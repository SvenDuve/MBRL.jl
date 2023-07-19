using MBRL
using Documenter

DocMeta.setdocmeta!(MBRL, :DocTestSetup, :(using MBRL); recursive=true)

makedocs(;
    modules=[MBRL],
    authors="Sven Duve <svenduve@gmail.com> and contributors",
    repo="https://github.com/SvenDuve/MBRL.jl/blob/{commit}{path}#{line}",
    sitename="MBRL.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://SvenDuve.github.io/MBRL.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/SvenDuve/MBRL.jl",
    devbranch="main",
)
