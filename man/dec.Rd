% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dec.R
\name{dec}
\alias{dec}
\title{Decrypt a ciphertext}
\usage{
dec(sk, ct)
}
\arguments{
\item{sk}{a private/secret key for any scheme as generated by the \code{\link{keygen}}.
function.}

\item{ct}{a ciphertext as produced from a call to \code{\link{enc}}.}
}
\value{
The decrypted integer message.  If the value is in the range of a standard
integer in R (-2147483647 to 2147483647) then an integer will be returned,
otherwise a \code{\link[gmp]{bigz}} big integer object from the gmp package
will be returned.
}
\description{
This decrypts an integer message which has been encrypted under one of the 
homomorphic schemes supported by this package.
}
\details{
Note that the scheme specified by the private key, \code{sk}, and the ciphertext,
\code{ct}, must match.

If a symmetric key scheme is being used, then the secret key should be provided
for the \code{sk} argument.
}
\examples{
p <- pars("FandV")
keys <- keygen(p)
ct <- enc(keys$pk, 1)
dec(keys$sk, ct)

}
\seealso{
\code{\link{enc}} to encrypt messages to ciphertexts which this function decrypts.
}
\author{
Louis Aslett
}
