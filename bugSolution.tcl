proc error_proc {args} {
  puts "Error: $args"
}

proc my_proc {x y} {
  if {$x == 0} {
    error_proc "Division by zero"
    return
  }
  puts [expr {$y / $x}]
}

catch {my_proc 0 5} result
puts "Result: $result"