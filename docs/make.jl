using Documenter, DocPkg

makedocs(;
    modules=[DocPkg],
    format=Documenter.HTML(
        prettyurls = get(ENV, "CI", nothing) == "true",
        mathengine = Documenter.MathJax()
    ),
    pages=[
        "Home" => "index.md",
    ],
    strict = true,  # See https://github.com/JuliaOpt/JuMP.jl/issues/1576
    repo="https://github.com/AKS1996/DocPkg.jl/blob/{commit}{path}#L{line}",
    sitename="DocPkg.jl",
    authors="Akshay Sharma"
)

deploydocs(
    repo   = "github.com/AKS1996/DocPkg.jl.git",
)
