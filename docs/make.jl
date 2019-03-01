using Documenter

push!(LOAD_PATH,"../src/")
using XPA

DEPLOYDOCS = (get(ENV, "CI", nothing) == "true")

makedocs(
    sitename = "XPA.jl Package",
    format = Documenter.HTML(
        prettyurls = DEPLOYDOCS,
    ),
    authors = "Éric Thiébaut and contributors",
    pages = ["index.md", "intro.md", "install.md",
             "client.md", "server.md", "misc.md", "library.md"]
)

if DEPLOYDOCS
    deploydocs(
        repo = "github.com/emmt/XPA.jl.git",
    )
end
