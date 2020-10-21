
"""
Function creates an __Vector{String}__ of all files matching pattern. Made to imitate list.files() from R. Prints whole path.
# Additional Arguments:
- `path::String`: by default current working directory `pwd()`
- `pattern::Regex`: pattern for files to search for
- `sub::Bool`: Should subdirectories be searched to? By default `true`.
# Examples
```julia-repl
julia> lf(;pattern = Regex(".jl\\\$"))
```
"""
function lf(;path::String=pwd(), pattern::Regex=nothing, sub::Bool=true)
    
    files = Vector{String}()
    
    if sub
        
        for cpath = walkdir(path)
            
            x = joinpath.(cpath[1], cpath[3])


            if !isempty(x)
                idx = occursin.(pattern, cpath[3])
                append!(files, x[idx] )
            end
            
        end
        
    else
        
        files = filter(x->occursin(pattern,x), first(walkdir(path))[3])
        
    end
    
    return(files)
    
end
