function test1(a,b,c,n)
	for i = 1:n
		c = a + b
	end
end

function test2(a,b,n)
	for i = 1:n
		new_c = a + b
	end
end

# A = rand(1000)
# B = rand(1000)
# C = zeros(1000)
# N = 10000000
A = rand(2)
B = rand(2)
C = rand(2)
N = 100000000

println(@elapsed test1(A,B,C,N))
println(@elapsed test2(A,B,N))
# The vectorized method is tested 
