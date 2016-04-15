function test1(A,B,C,N)
	len = length(C)
	for i=1:N
		for j = 1:len
			C[j] = A[j] + B[j]
		end
	end
end

function test2(A,B,C,N)
	len = length(C)
	for i=1:N,j=1:len
		C[j] = A[j] + B[j]
	end
end

function test3(A,B,C,N)
	for i=1:N
		len = length(C)
		for j = 1:len
			C[j] = A[j] + B[j]
		end
	end
end

A = rand(1000)
B = rand(1000)
C = zeros(1000)
N = 10000000

println(@elapsed test1(A,B,C,N))
println(@elapsed test2(A,B,C,N))
println(@elapsed test3(A,B,C,N))
