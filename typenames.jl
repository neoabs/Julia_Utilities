"""
Prints fieldnames of variable.
```
"""
function typenames(type::Any)

    fieldnames(typeof(type))

end