"""
Function prints numbers with related to them colors in `printstyled`
"""
function palette(bold::Bool=true)
    
    print("\n    Choose your color:\n\n")
    for i = 1:255
        
        if ((i-16)%12 == 0)&(i>15) 
            
            print("\n")
            
        end
        
        printstyled(string(i) * repeat(" ",6 - length(string(i)) - 1*(i<16) );color = i, bold = bold )
        
        if (i == 15)
            
            print("\n")
            
        end
        
        if ((i-16)%6 == 5)&(i>15) 
            
            print("   ")
            
        end
        
    end
    
end

"""
Use it when you really need to be noticed:

# Examples
```julia-repl
julia> printclowned("I want to be noticed!!!\\n\\nRight now!!!)")
```
"""
function printclowned(text::String)
    
    for t ∈ text

        printstyled(t, color = rand(1:255), bold = rand( (true,false)))
        
    end
    
end




