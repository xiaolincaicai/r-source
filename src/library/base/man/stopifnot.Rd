\name{stopifnot}
\alias{stopifnot}
\title{Ensure the "Truth" of R Expressions}
\usage{
stopifnot(...)
}
\arguments{
 \item{\dots}{any number of (\code{\link{logical}}) \R expressions which
   should evaluate to \code{\link{TRUE}}.}
}
\description{
  If any of the expressions in \code{\dots} are not \code{\link{all}}
  \code{TRUE},
  \code{\link{stop}(..)} is called, producing an error message
  indicating the \emph{first} element of \code{\dots} which was not true.
}
\details{
  \code{stopifnot(A, B)} is conceptually equivalent to
  \code{\{ if(!all(A)) stop(...) ; if(!all(B)) stop(...) \}}.
}
\value{
  (\code{\link{NULL}} if all statements in \code{\dots} are \code{TRUE}.)
}
\seealso{\code{\link{stop}}, \code{\link{warning}}.}
\examples{
stopifnot(1 == 1, all.equal(pi, 3.14159265), 1 < 2) # all TRUE

m <- matrix(c(1,3,3,1), 2,2)
stopifnot(m == t(m), diag(m) == rep(1,2)) # all(.) |=>  TRUE

options(error = expression(NULL))# "disable stop(.)"  << Use with CARE! >>

stopifnot(all.equal(pi, 3.141593),  2 < 2, all(1:10 < 12), "a" < "b")
stopifnot(all.equal(pi, 3.1415927), 2 < 2, all(1:10 < 12), "a" < "b")

options(error = NULL)# revert to default error handler
}
\keyword{environment}
\keyword{programming}
\keyword{error}