function test1(N)
	count::Int = 1
	for i = 1:N
		count += count
	end
end

function test2(N)
	count::Float64 = 1.0
	for i = 1:N
		count += count
	end
end

N = 100_000_000_000_000

println(@elapsed test1(N))
println(@elapsed test2(N))
