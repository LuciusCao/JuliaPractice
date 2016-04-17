function test1(N)
	count::Int = 1
	for i = 1:N
		count += count
	end
end

N = 100_000_000_000_000

println(@elapsed test1(N))
