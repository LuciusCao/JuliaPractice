function test1(a,b,c,n)
	len = length(c)
	for i=1:n
		for j = 1:len
			c[j] = a[j] + b[j]
		end
	end
end

function test2(a,b,c,n)
	len = length(c)
	for i=1:n,j=1:len
		c[j] = a[j] + b[j]
	end
end

function test3(a,b,c,n)
	for i=1:n
		len = length(c)
		for j = 1:len
			c[j] = a[j] + b[j]
		end
	end
end

# A = rand(1000)
# B = rand(1000)
# C = zeros(1000)
# N = 10000000
A = rand(2)
B = rand(2)
C = zeros(2)
N = 100000000

println(@elapsed test1(A,B,C,N))
println(@elapsed test2(A,B,C,N))
println(@elapsed test3(A,B,C,N))
