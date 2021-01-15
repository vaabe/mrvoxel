module DtiModel

using LinearAlgebra

function multimodel(xdata, A)
	S0 = A[1]
	D = [A[2] A[3] A[4]
		 A[3] A[5] A[6]
		 A[4] A[6] A[7]]
	b = xdata[:, 1]
	g = xdata[:, 2:4]

	gD = g*D
	gDg = gD*g'
	gDg_diag = gDg[diagind(gDg)]
	@. S0 * exp.(-b.*gDg_diag)
end

export multimodel

end
