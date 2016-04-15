function test(A,B,N)
	for i = 1:N
		C = A + B
	end
end

A = rand(1000);
B = rand(1000);
N = 10000000

print(@elapsed test(A,B,N))
# The devectorized method is tested 
