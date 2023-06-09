// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

#ifdef RCPP_USE_GLOBAL_ROSTREAM
Rcpp::Rostream<true>&  Rcpp::Rcout = Rcpp::Rcpp_cout_get();
Rcpp::Rostream<false>& Rcpp::Rcerr = Rcpp::Rcpp_cerr_get();
#endif

// dedistance
NumericVector dedistance(NumericVector& distances, int points_size);
RcppExport SEXP _hclust1d_dedistance(SEXP distancesSEXP, SEXP points_sizeSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericVector& >::type distances(distancesSEXP);
    Rcpp::traits::input_parameter< int >::type points_size(points_sizeSEXP);
    rcpp_result_gen = Rcpp::wrap(dedistance(distances, points_size));
    return rcpp_result_gen;
END_RCPP
}
// hclust1d_heapbased
List hclust1d_heapbased(NumericVector& points, int method);
RcppExport SEXP _hclust1d_hclust1d_heapbased(SEXP pointsSEXP, SEXP methodSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericVector& >::type points(pointsSEXP);
    Rcpp::traits::input_parameter< int >::type method(methodSEXP);
    rcpp_result_gen = Rcpp::wrap(hclust1d_heapbased(points, method));
    return rcpp_result_gen;
END_RCPP
}
// hclust1d_single
List hclust1d_single(NumericVector& points);
RcppExport SEXP _hclust1d_hclust1d_single(SEXP pointsSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericVector& >::type points(pointsSEXP);
    rcpp_result_gen = Rcpp::wrap(hclust1d_single(points));
    return rcpp_result_gen;
END_RCPP
}
// sqrt
NumericVector sqrt(NumericVector& squared_distances);
RcppExport SEXP _hclust1d_sqrt(SEXP squared_distancesSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericVector& >::type squared_distances(squared_distancesSEXP);
    rcpp_result_gen = Rcpp::wrap(sqrt(squared_distances));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_hclust1d_dedistance", (DL_FUNC) &_hclust1d_dedistance, 2},
    {"_hclust1d_hclust1d_heapbased", (DL_FUNC) &_hclust1d_hclust1d_heapbased, 2},
    {"_hclust1d_hclust1d_single", (DL_FUNC) &_hclust1d_hclust1d_single, 1},
    {"_hclust1d_sqrt", (DL_FUNC) &_hclust1d_sqrt, 1},
    {NULL, NULL, 0}
};

RcppExport void R_init_hclust1d(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
